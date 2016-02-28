File.open(ARGV[0].to_s) do |file|

  while text = file.gets
    puts text
  end

file.close
end
puts "\nfile:: #{ARGV[0]}"
