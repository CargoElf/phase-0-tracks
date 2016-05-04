puts "What's the hamster's name?"
name = gets.chomp

puts "How loud is the hamster on a scale of 1-10?"
vol_lvl = gets.chomp

puts "What color is the hamster's fur?"
fur_color = gets.chomp

puts "Is the hamster is a good candidate for adoption? (y/n)"
adoptable = gets.chomp

puts "About how old is the hamster in years? Leave blank if not sure."
age = gets.chomp

if age = ""
  age = nil
end

vol_lvl = vol_lvl.to_i
age = age.to_i
