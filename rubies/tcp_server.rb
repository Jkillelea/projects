# Doesn't work
require 'socket'

server = TCPSocket.open('localhost', 1000)

loop {
  client = server.accept
  client.puts("it worked")
  client.close
}
