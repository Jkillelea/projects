movies = {
   "Dr. Strangelove" => 5
}

puts "add"
puts "update"
puts "display"
puts "delete"
puts "Select an option: "

choice = gets.chomp

case choice

when "add"
  puts "What is the movie's title?"
  title = gets.chomp

  puts "What rating?"
  rating = gets.chomp.to_i

  if movies[title] = nil #if movie isn't in hash
      movies[title] = rating

  elsif movies[title] != nil #if movie is already in hash
      puts "this movie has already been entered!"
  end


when "update"
   puts "Which movie to update?"
   movies.each do |title, rating|
     puts title + " : " + rating.to_s
   end

   to_update = gets.chomp.to_s

   if movies[to_update] = nil
     puts "That movie isn't in the system!"
   else
     print "enter a new rating : "
     new_rating = gets.chomp

     movies[to_update] = new_rating.to_i
   end



when "display"
puts "Movies!"

when "delete"
puts "Deleted"

else
puts "Error!"

end
