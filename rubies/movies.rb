movies = {
    favorite: "Dr. Strangelove"
}

puts "So, what's your favorite movie?"

choice = gets.chomp

case choice

when "add"
puts "Added!"

when "update"
puts "Updated!"

when "display"
puts "Movies!"

when "delete"
puts "Deleted"

else
puts "Error!"

end
