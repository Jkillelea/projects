puts "Give us some input : "
text = gets.chomp #get input text
puts "Give us a word to redact : "
redact = gets.chomp
words = text.split(" ") #make array of the words from input, splitting at the spaces

words.each do |word|
    print word
end
