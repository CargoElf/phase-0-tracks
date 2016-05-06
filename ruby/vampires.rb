# validates y n input
def yesno(y_n)
  y_n = nil
  until y_n == "y" || y_n == "n"
    puts "y/n"
    y_n = gets.chomp
  end
  return y_n
end

num_employees = 0
while num_employees < 1
  puts "How many employees do you wish to process?"
  num_employees = gets.chomp.to_i
end

init_num = num_employees

while num_employees > 0
  remaining = num_employees - 1
  if init_num == num_employees
    puts "Processing the first employee."
    puts "#{remaining} employees left to process"
    puts ""
  elsif num_employees == 2
    puts "1 employee remaining."
    puts ""
  elsif num_employees == 1
    puts "Last employee to be processed!"
    puts ""
  else
    puts "#{remaining} employees left to process"
    puts ""
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

  year_ob = Time.new.year + 1
  until year_ob.to_i <= Time.new.year
    puts "What year were you born?"
    year_ob = gets.chomp
  end
  year_ob = year_ob.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = yesno(garlic_bread)

  puts "Would you like to enroll in the company's health insurance?"
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
  puts ""

  num_employees -= 1
end
