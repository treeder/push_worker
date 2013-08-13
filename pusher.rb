require 'rest'

url = params[:url]

# create headers hash for authentication and what not
headers = {}
headers["Authorization"] = "Basic HASH"

# create body for post
body = params[:body]

client = Rest::Client.new
response = client.post(url, :headers=>headers, :body=>body)
p response
