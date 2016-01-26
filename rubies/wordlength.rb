@len = 0
word = gets.chomp
word.each_char { |c| @len += 1 }

puts @len
