puts "Give us some input : "
text = gets.chomp #get input text
puts "Give us a word to redact : "
redact = gets.chomp
words = text.split(" ") #make array of the words from input, splitting at the spaces

=begin
Print out the  user's text, redacting any word that matches the string to redact.
bugs: Does not look at punctuation
=end
words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end
