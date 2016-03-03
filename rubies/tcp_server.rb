# Doesn't work
# supposed to work with client.rb
require 'socket'

server = TCPSocket.open('localhost', 1000)

loop {
  client = server.accept
  client.puts("it worked")
  client.close
}
