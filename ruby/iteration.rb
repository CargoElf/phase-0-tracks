# Own method that can take a block
#def name
#  puts "What is your name?"
#  user_input = gets.chomp
#  puts "Our block is about to run."
#  yield (user_input)
#  puts "Our block is finished running."
#end


#name { |user_input| puts "Your name is #{user_input}."}

=begin
# Release 1
# Array with .each iteration
array = [9, 'hi', 'yes', 19]
puts "Our original array:"
p array
array.each do | i |
  puts i
end
puts "Our after .each method call:"
p array
# Array with .map! iteration
array.map! do | i |
  puts i
  i.to_s
end
puts "Our after .map! method call:"
p array

# Hash with .each iteration
soccer_cities = {:seattle => 'sounders', :chicago => 'fire', :portland => 'timbers', :vancouver => 'whitecaps'}

puts "Our original hash:"
p soccer_cities

soccer_cities.each do | city, team|
  puts "#{city}'s team is #{team}."
end

puts "Our after .each method call for a hash:"
p soccer_cities
=end

#Release 2

array2 = [1,2,3,4,5,6,7,8]
hash2 = { 1 => "cat", 2 => "dog", 3 => "fish", 4 => "frog", 5 => "snake"}

puts array2.delete_if {|x| x < 4}
p array2

puts hash2.delete_if {|key, value| key == 3}
p hash2

array2 = [1,2,3,4,5,6,7,8]
hash2 = { 1 => "cat", 2 => "dog", 3 => "fish", 4 => "frog", 5 => "snake"}


puts array2.keep_if {|x| x > 5}
p array2

puts hash2.keep_if {|number, animal| number <= 2}
p hash2

array2 = [1,2,3,4,5,6,7,8]
hash2 = { 1 => "cat", 2 => "dog", 3 => "fish", 4 => "frog", 5 => "snake"}

puts array2.take(3)
p array2

puts hash2