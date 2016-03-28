# The classic Node.js http server example
http = require 'http'

PORT = 8808

# function called when somebody reqests something from the server
handleRequest = (request, response) ->
  response.end("It works: path hit = " + request.url)

# make the server, with callback function
server = http.createServer(handleRequest)

# start the server, notify that it's listening
server.listen(PORT, () ->
  console.log "Server running on localhost port " + PORT + "..."
)
