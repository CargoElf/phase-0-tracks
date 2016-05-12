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

def scramble(name)
  vowels = {0=>"a" ,1=>"e", 2="i", 3=>"o", 4=>"u"}
  consonants = {0: "b", 1: "c". 2: "d", 3: "f", 4: "g",
    5: "h", 6: "j", 7: "k", 8: "l", 9: "m", 10: "n", 11: "p",
    12: "q", 13: "r", 14: "s", 15: "t", 16: "v", 17: "w",
    18: "x", 19: "y", 20: "z"}
  name.map! {|x| if x =

agent_name = "Ben Van Sickle"
puts name_swap(agent_name)