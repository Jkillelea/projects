# splits an input file on each new line

file = File.open(ARGV[0].to_s)
# File.open() also accepts a block as an argument File.open(){|file| do something}
while text = file.gets

  # split each line into an array
  data_arg = text.split("\n")

  # if that array isn't empty
  unless data_arg.empty? == true
    print "#{data_arg} \n"
  end

end

file.close
