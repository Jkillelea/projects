require_relative "filehandler"

hand = FileHandler.new

entries = hand.files_in(gets.chomp)
puts "--------------------------------------"
entries.each { |e| puts e}
