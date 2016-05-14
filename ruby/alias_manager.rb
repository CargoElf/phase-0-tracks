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
  puts full_name = name.split(" ")
  first_name = full_name.shift 
  last_name = full_name.join(" ")
  full_name = "#{last_name} #{first_name}"
end

def name_scram(name)


#def consonant_incr(name)  
#  consonants = "bcdfghjklmnpqrstvwxyz"

agent_name = "Ben Van Sickle"
puts (name_swap(agent_name))