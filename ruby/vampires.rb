puts "What is your name?"
name = gets.chomp

puts name

puts "How old are you?"
age = gets.chomp.to_i

puts"What year year were you born?"
year_ob = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp[0].downcase

puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp[0].downcase

if name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
elsif (year_ob + age >= Time.new.year - 1) && (garlic_bread == "y" || insurance == "y")
  puts "Probably not a vampire."
elsif (year_ob + age < Time.new.year - 1) && (garlic_bread != "y" && insurance != "y")
  puts "Almost certainly a vampire."
elsif (year_ob + age < Time.new.year - 1) && (garlic_bread != "y" || insurance != "y")
  puts "Probably a vampire." 
else
  puts "Results inconclusive."
end
