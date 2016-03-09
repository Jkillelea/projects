# splits an input file on each new line

file = File.read(ARGV[0].to_s)
# File.open() also accepts a block as an argument File.open(){|file| do something}
# while text = file.gets

  # split each line into an array
  # file = file.split("\n")
  # file = file.split(",")
  file = file.split(" ")

  # # if that array isn't empty
  # if file.empty?
  #   puts "#{file}"
  # end

  # file.compact!
  print file

# end

# file.close
