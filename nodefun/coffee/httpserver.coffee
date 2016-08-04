http = require 'http'

PORT = 8808


handleRequest = (request, response) ->
  response.end("It works: path hit = " + request.url)
  return

server = http.createServer(handleRequest)

server.listen(PORT, () ->
  console.log "Server running on localhost:" + PORT + "..."
  return
)
