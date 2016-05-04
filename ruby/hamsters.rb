puts "What's the hamster's name?"
name = gets.chomp

until name != ""
  puts "Please enter an answer."
  name = gets.chomp
end

puts "How loud is the hamster on a scale of 1-10?"
vol_lvl = gets.chomp

until vol_lvl.to_i>0 && vol_lvl.to_i<11
  puts "Please enter a value between 1-10."
  vol_lvl = gets.chomp
end

puts "What color is the hamster's fur?"
fur_color = gets.chomp.downcase

puts "Is the hamster is a good candidate for adoption? (y/n)"
adoptable = gets.chomp

a = false
while a == false
  if adoptable.downcase == "y"
  a = true
  elsif adoptable.downcase == "n"
    a = true
  else
    puts "Please enter a y or n."
    adoptable = gets.chomp
  end
end

puts "About how old is the hamster in years? Leave blank if not sure."
age = gets.chomp

if age == ""
  age = nil
end

vol_lvl = vol_lvl.to_i
if age != nil
  age = age.to_i
end

puts "This hamster is called #{name}."
puts "On a scale of 1-10 in the loudness category, #{name} is a #{vol_lvl}."

if adoptable == "y"
  puts "#{name} is a great candidate for adoption!"
else
  puts "#{name} is not ready for adoption yet."
end

if age == nil
  puts "We're not sure how old #{name} is."
else
  puts "#{name} is #{age} years old."
end
      

# Work done by Ben Van Sickle and Nick Olson
