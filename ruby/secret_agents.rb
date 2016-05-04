
=begin
- Ask for input
- Get input
  - Loop through each letter of input until end of string
   - If not a space
     - Shift each letter to the next sequential letter
  - Else leave space unchanged
=end

=begin
# - Get input
# - Loop through each letter of input until end of string
#   - If not a space
#     - Convert letter to ASCII value
#     - Subtract 1 from that value
#     - Convert ASCII value to character
#   - Else leave space unchanged
=end

def encrypt(input_str)
  i = 0
  while i < input_str.length
    case true
      when input_str[i] == "z"
        input_str[i] = "a"
      when input_str[i] != " "
        input_str[i] = input_str[i].next
    end
    i += 1
  end
  return input_str
end

def decrypt(input_str)
  i = 0
  while i < input_str.length
    case true
      when input_str[i] == "a"
        input_str[i] = "z"
      when input_str[i] != " "
        ascii_num = input_str[i].ord - 1
        input_str[i] = ascii_num.chr
    end
    i += 1
  end
  return input_str
end

puts "Please input a message."
message = gets.chomp.downcase
puts decrypt(message) 