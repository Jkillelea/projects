# appends "it works!" to a file specified on the command line
File.open(ARGV[0], 'a') do |file|

file.puts "\nit works!"

file.close
end
