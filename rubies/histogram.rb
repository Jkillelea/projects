puts "Please enter some text"

text = gets.chomp

words = text.split(" ") #Split line of text up into individual words

frequencies = Hash.new(0)

words.each do |word| #Each time we find a word, increment it's value in the iterator by 1
  frequencies[word] += 1
end

frequencies = frequencies.sort_by { |word|  }
frequencies.reverse!

frequencies.each do |word, count|
  puts "#{word}" + " " + "#{count}"
end
