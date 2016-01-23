def show_whole_hash(hash)
  hash.each do |key, value|
    puts "#{key}: #{value}"
  end
end


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

   show_whole_hash(movies)

   to_update = gets.chomp.to_s

   if movies[to_update] = nil
     puts "That movie isn't in the system!"

   else
     print "enter a new rating : "
     new_rating = gets.chomp
     movies[to_update] = new_rating.to_i
   end


when "display" then show_whole_hash(movies)


when "delete"

  show_whole_hash(movies)
  puts "Movie to delete: "
  to_delete = gets.chomp

  if movies[to_delete] != nil
    movies.delete(to_delete)
  else
    puts "Movie isn't in data set! Already deleted?"
  end

else puts "Error!"

end
