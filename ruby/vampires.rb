def yesno(y_n)
  until y_n == "y" || y_n == "n"
    puts "Enter y or n."
    y_n = gets.chomp
  end
  return y_n
end

name = ""
until name  != ""
  puts "What is your name?"
  name = gets.chomp
end

age = ""
until age != "" && age > 0
  puts "How old are you?"
  age = gets.chomp.to_i
end

year_ob = ""
until year_ob != "" && year_ob.to_i <= Time.new.year
  puts "What year were you born?"
  year_ob = gets.chomp
end
year_ob = year_ob.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = yesno(garlic_bread)

puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = yesno(insurance)

if name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
elsif (year_ob + age >= Time.new.year - 1) && (garlic_bread == "y" || insurance == "y")
  puts "Probably not a vampire."
elsif (year_ob + age < Time.new.year - 1) && (garlic_bread == "n" && insurance == "n")
  puts "Almost certainly a vampire."
elsif (year_ob + age < Time.new.year - 1) && (garlic_bread != "y" || insurance != "y")
  puts "Probably a vampire." 
else
  puts "Results inconclusive."
end
