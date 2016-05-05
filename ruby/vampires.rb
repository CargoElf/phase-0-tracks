puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts"What year year were you born?"
year_ob = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (y/n)"
insuracne = gets.chomp[0].downcase


if (year_ob.to_i + age.to_i <= Time.new.year - 1) && (garlic_bread == "y" || insuracne == "y")
  puts "Probably not a vampire"
end