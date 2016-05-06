# validates y n input
def yesno(y_n)
  y_n = nil
  until y_n == "y" || y_n == "n"
    puts "y/n"
    y_n = gets.chomp
  end
  return y_n
end


#Sets number of times the loop will run
num_employees = 0
while num_employees < 1
  puts "How many employees do you wish to process?"
  num_employees = gets.chomp.to_i
end

current_y = Time.new.year

while num_employees > 0
  remaining = num_employees - 1

#loops until name is not blank
  name = ""
  until name  != ""
    puts "What is your name?"
    name = gets.chomp
  end

  #loops until age is not blank and is above 0
  age = ""
  until age != "" && age > 0
    puts "How old are you?"
    age = gets.chomp.to_i
  end

  #loops until year_ob is bellow the current year
  year_ob = current_y + 1
  until year_ob.to_i <= Time.new.year
    puts "What year were you born?"
    year_ob = gets.chomp
  end
  year_ob = year_ob.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = yesno(garlic_bread)

  puts "Would you like to enroll in the company's health insurance?"
  insurance = yesno(insurance)

  #checks age against year of birth
  if year_ob + age == current_y || year_ob + age == current_y - 1
    age_check = true
  else
    age_check = false
  end

  allergies = ""
  puts "Do you have any allergies? List the one at a time."
  puts "If you don't have any or are finished listing them, type done."
  until allergies == "done" || allergies == "sunshine"
    puts "Enter another or enter 'done' if you are finished."  
    allergies = gets.chomp.downcase
    if allergies == "sunshine"
      age_check = false
      name = ""
      garlic_bread = "y"
      insurance = "n"
    else
      puts ""
    end
  end

  #Vampire checking logic
  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  elsif age_check && (garlic_bread == "y" || insurance == "y")
    puts "Probably not a vampire."
  elsif !age_check && (garlic_bread == "n" && insurance == "n")
    puts "Almost certainly a vampire."
  elsif !age_check && (garlic_bread != "y" || insurance != "y")
    puts "Probably a vampire." 
  else
    puts "Results inconclusive."
  end
  puts ""

  num_employees -= 1

  if num_employees == 1
    puts "Last employee to be processed!"
    puts ""
  elsif num_employees ==0
  else
    puts "#{remaining} employees left to process"
    puts ""
  end
end
