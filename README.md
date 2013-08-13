push_worker
===========

An IronWorker worker that pushes out to URL(s), similar to IronbMQ push queues, but more flexibility and control. 

## Usage

First, modify pusher.rb to your liking. 

Then upload it:

```sh
iron_worker upload pusher
```

Then you can start queuing tasks for it!

Usually you'd do this from your code, but here's a quick way to test from the cli:

```sh
iron_worker queue pusher --payload "{\"url\": \"http://requestb.in/1e9y0c71\", \"body\":\"hello world\"}"
```

The payload of the task should contain at least the following fields:

- url - the URL to post to
- body - the body of the post request

