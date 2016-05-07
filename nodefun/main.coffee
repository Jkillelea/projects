# The classic Node.js http server example, with some upgrades
http = require 'http'
dispatcher = require 'httpdispatcher'

# --------------------------------------------------------------------------------------------------
# define the port that the server will listen on
PORT = process.argv[2]
console.log PORT

# because "variable?" doesn't compile the same way as "object?" so it has to be written out in full instead
if PORT is undefined or PORT is null
  PORT = 8808

# --------------------------------------------------------------------------------------------------
# function called when somebody reqests something from the server
handleRequest = (request, response) ->
  try
    console.log request.url                # log the request to the console
    dispatcher.dispatch(request, response) # and send back a response
  catch error
    console.log error                      # if something goes wrong, log it
  return                                   # suppress implicit return

# --------------------------------------------------------------------------------------------------
# GET  /page1 => 'Page One'
# POST /page2 => 'Page Two'
# GET  /page3 => 404
# GET  /resources/images-that-exists.png => Image resource
# GET  /resources/images-that-does-not-exists.png => 404

# dispatcher behavior for a get request
dispatcher.onGet("/page1", (req, res) ->   # when page1 is requested, use callback
  res.writeHead(200, 'Content - Type':'text/plain')
  res.end("Page One")                      # send 200 response code and plain text
  return                                   # suppress implicit return
  )

dispatcher.onGet("/", (req, res) ->        # when page1 is requested, use callback
  res.writeHead(200, 'Content - Type':'text/plain')
  res.end("Root Page")                     # send 200 response code and plain text
  return                                   # suppress implicit return
  )

dispatcher.onPost("/page1", (req, res) ->
  res.writeHead(200, 'Content - Type':'text/plain')
  res.end("Got Post")                      # send 200 response code and plain text
  return                                   # suppress implicit return
  )

# --------------------------------------------------------------------------------------------------
# make the server object, with callback function
server = http.createServer(handleRequest)

# start the server, notify that it's listening
server.listen(PORT, () ->
  console.log "Server running on localhost port " + PORT + "..."
  return                                   # suppress implicit return
  )
