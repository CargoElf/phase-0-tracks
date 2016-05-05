puts "What is your name?"
name = gets.chomp
valid_input(name)

puts name

puts "How old are you?"
age = gets.chomp.to_i

puts"What year year were you born?"
year_ob = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp[0].downcase

puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp[0].downcase
