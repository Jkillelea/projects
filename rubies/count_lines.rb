#!/usr/bin/env ruby
COMMENT_CHAR = '#'
numlines = 0
if ARGV.length > 0
  code = File.read(ARGV[0])
else
  code = $stdin.read
end

lines = code.split("\n")

lines.each { |line|
  next if line == ''
  array = line.split(' ')
  next if line[0] == COMMENT_CHAR
  numlines += 1
}

puts numlines
exit 0
