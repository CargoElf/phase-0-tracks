=begin
Take in agent name
Spit name into array
  Switch first and last name
Check each letter of array
  for each vowel, increment to the next vowel
  for each consonant, increment to the next consonant
=end

#Switches first and last name. Turns works with multi-word
#last names.
def name_swap(name)
  full_name = name.split(" ")
  first_name = full_name.shift 
  last_name = full_name.join(" ")
  full_name = "#{last_name} #{first_name}"
end

def name_scram(name)
  i = 0
  while i < name.length
    if name[i] == "z"
      name[i] = "a"
    elsif name[i] != " "
      name[i] = name[i].next
    end
    i += 1
  end
  return name
end

agent_name = "ben van sickle"
puts name_scram(name_swap(agent_name)).split.map(&:capitalize).join(' ')

choice = ""
while choice != "quit"
  puts "Enter a name:"
  agent_name = gets.chomp.downcase
  puts name_scram(name_swap(agent_name)).split.map(&:capitalize).join(' ')
  puts "Press the 'enter' key to input another name or type 'quit' to stop"
  choice = gets.chomp
end
