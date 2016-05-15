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
  full_name = name.split(" ") #splits name at spaces into array
  first_name = full_name.shift 
  last_name = full_name.join(" ")
  full_name = "#{last_name} #{first_name}"
end

def name_scram(name)
  name = name.downcase.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
  name = name.downcase.tr("aeiou", "eioua")
end

=begin
def name_scram(name)
  name.each_char do |i|
    if name[i] == "z"
      name[i] = "a"
    elsif name[i] != " "
      name[i] = name[i].next
    end
  end
end
=end

aliases = []

#agent_name = "Ben Van Sickle"
#puts name_scram(name_swap(agent_name)).split.map(&:capitalize).join(' ')

choice = ""
while choice != "quit"
  puts "Enter a name:"
  agent_name = gets.chomp
  code_name = name_scram(name_swap(agent_name.downcase)).split.map(&:capitalize).join(' ')
  puts code_name
  aliases << [agent_name, code_name]
  puts "Press the 'enter' key to input another name or type 'quit' to stop"
  choice = gets.chomp
end

aliases.each do |name, code|
  puts "Real Name:#{name}, Code Name: #{code}"
end