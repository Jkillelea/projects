#!/usr/bin/ruby -wKU

def arg_parser(arg1, arg2)
  if arg1 == "-p"
    puts arg2
  else
    puts "potooooooooo"
  end
end


def parse_ARGV
  (0...ARGV.length).each do |index|
  arg1 = ARGV[index]
  arg2 = ARGV[index + 1]

  arg_parser(arg1, arg2)  
end
