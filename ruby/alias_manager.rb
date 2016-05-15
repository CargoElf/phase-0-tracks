=begin
Take in agent name
Spit name into array
  Recombine switching first and last name
Check each letter of letter of string
  for each consonant, replace with the next consonant
    for "z" replace with "b"
  for each vowel, replace with the next vowel
    for "u" replace with "a"
=end

# Switches first and last name. Turns works with multi-word
# last names. splits name at spaces into array, bumps them 
# one and turns back into string.
def name_swap(name)
  name.split.rotate.join(" ") 
end

# takes in name and first transforms consonants, then vowels
def name_scram(name)
  name = name.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
  name = name.tr("aeiou", "eioua")
end

aliases = []
choice = ""
while choice != "quit" # runs until quit is entered after agent name
  puts "Enter a name:"
  agent_name = gets.chomp
  code_name = name_scram(name_swap(agent_name.downcase)).split.map(&:capitalize).join(' ')
  puts "Your code name is #{code_name}!"
  aliases << [agent_name, code_name]
  puts "Press the 'enter' key to input another name or type 'quit' to stop"
  choice = gets.chomp
end

# iterates through array and prints real name + code name
aliases.each do |name, code|
  puts "Real Name: #{name}, Code Name: #{code}"
end