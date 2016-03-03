# doesn't work
require 'socket'
# TCP client
host = 'localhost'
port = 1000

sock = TCPSocket.open(host, port)

while line = sock.gets
  puts line
end

sock.close
