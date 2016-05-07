// Generated by CoffeeScript 1.9.3
var PORT, handleRequest, http, server;

http = require('http');

PORT = 8808;

handleRequest = function(request, response) {
  return response.end("It works: path hit = " + request.url);
};

server = http.createServer(handleRequest);

server.listen(PORT, function() {
  return console.log("Server running on localhost port " + PORT + "...");
});
