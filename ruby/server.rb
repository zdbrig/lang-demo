require 'webrick'

# Set up the server
server = WEBrick::HTTPServer.new(Port: 8000)

# Set up a response to incoming requests
server.mount_proc '/' do |req, res|
  res.body = 'Hello, World!'
end

# Start the server
server.start
