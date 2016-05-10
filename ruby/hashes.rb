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

puts "What is the client's preferred decor theme?"
client_details[:decor_theme] = gets.chomp

puts client_details[:decor_theme]

y_n = nil
until y_n == "y" || y_n == "n"
  puts "Does the client like modern design? (y/n)"
  y_n = gets.chomp
  if y_n == "y"
    client_details[:like_modernism] = true
  elsif y_n == "n"
    client_details[:like_modernism] = false
  end
end

puts client_details[:like_modernism]

puts "Client Name: #{client_details[:name]}"
puts "Age: #{client_details[:age]}"
puts "Number of Children: #{client_details[:num_children]}"
puts "Decor Theme: #{client_details[:decor_theme]}"
if client_details[:like_modernism] == true
  puts "Client likes modern design!"
else
  puts "Client doesn't like modern design!"
end

puts "Did you want to change any input? Enter what to change now. If not enter 'done'."
answer = gets.chomp
if answer != "done"
  puts "Please enter the new value."
  client_details[answer.to_sym] = gets.chomp
  puts "Client Name: #{client_details[:name]}"
  puts "Age: #{client_details[:age]}"
  puts "Number of Children: #{client_details[:num_children]}"
  puts "Decor Theme: #{client_details[:decor_theme]}"
  if client_details[:like_modernism] == true
    puts "Client likes modern design!"
  else
    puts "Client doesn't like modern design!"
  end
end
