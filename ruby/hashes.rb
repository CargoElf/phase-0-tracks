=begin
***pseudo code***
For each key in hash, prompt user for input to assign to value.
  Assign value to appropriate key
  Change each value to the appropriate data type.
Display the hash after all values have been assigned.
Prompt user for any changes needed any one key value.
  Get key name
  Get new value and update hash
Display the hash.a
=end

client_details = {
  name: nil,
  age: nil,
  num_children: nil,
  decor_theme: nil,
  like_modernism: nil,
}

puts "What is the client's name?"
client_details[:name] = gets.chomp

puts client_details[:name]

puts "How old is the client?"
client_details[:age] = gets.chomp.to_i

puts client_details[:age] + 0

puts "How many children does the client have?"
client_details[:num_children] = gets.chomp.to_i

puts client_details[:num_children] + 0