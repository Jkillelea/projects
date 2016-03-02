file = File.open(ARGV[0].to_s)
# File.open() also accepts a block as an argument File.open(){|file| do something}
  while text = file.gets
    puts text
  end

file.close
puts "\nfile:: #{ARGV[0]}"
