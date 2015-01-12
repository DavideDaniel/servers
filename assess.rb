
candies = %w[ Starburst Lifesavers Snickers Milky_Way Three_Musketeers Skittles]

candies.each {|each|
  puts each
}

uppers = candies.map{|candy| candy.upcase }

puts
puts "What's your favorite letter?"

fav_letter = gets.chomp.upcase


puts favorites = uppers.select{|candy|
candy.upcase.include?(fav_letter)}



if favorites.include?(fav_letter)|favorite|
  puts favorites.capitalize 
end
 
if not favorites.include?(fav_letter)
	puts "No candy for you!"
end