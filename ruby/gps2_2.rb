=begin

Method to create a list
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps: 
  create empty hash and set default quantity to one
  take user input and split into array
  use array blocks for hash keys
  print the list to the console using print method
output: hash

Method to add an item to a list
  input: item name and optional quantity
  steps:
    get user input for item
    get user input for quantity
    use item for key and quantity for value
    store in hash
  output: updated hash

Method to remove an item from the list
  input: item name
  steps:
    get user input for item to be removed
    remove item from hash
  output: updated hash

Method to update the quantity of an item
  input: item name and quantity
  steps:
    get user input for item
    get user input for new quantity
    update quantity in hash
  output: updated hash

Method to print a list and make it look pretty
  input: hash
  steps:
    print "Your cart contains"
    iterate through hash
      print quantity of item then item name
  output: informational formated list

=end

def create_list(list)
  list = list.split(" ")
  grocery_list = Hash.new
  list.each do |i|
    grocery_list[i] = 1
  end
  grocery_list
end

def update_list(item,amount,grocery_list)
  grocery_list[item] = amount
  grocery_list
end

def delete_item(item,grocery_list)
  grocery_list.delete(item)
  grocery_list
end

#def update_amount(item,amount,grocery_list)
#  new_hash = {item => amount}
#  grocery_list.merge(new_hash)
#end

def print_list(grocery_list)
  puts "Here's what you have:"
  grocery_list.each do |item,amount|
    puts "You have #{amount} #{item}"
  end
end

grocery_list = create_list("carrots apples cereal pizza")
update_list("lemonade", 2, grocery_list)
update_list("tomatoes", 3, grocery_list)
update_list("onions", 1, grocery_list)
update_list("ice cream", 4, grocery_list)
delete_item("lemonade", grocery_list)
update_list("ice cream", 1, grocery_list)

print_list(grocery_list)

=begin
What did you learn about pseudocode from working on this challenge?

  I learned the importance of breaking up the pseudo code. Previously I don't think I've specifically broke it up into methods and I definitely didn't think about input and output for each method in pseudocode.

What are the tradeoffs of using arrays and hashes for this challenge?

  To use an array it would have to be multidimensional. With hash the item is used as the key and the amount is tied directly to it. Hashes aren't as simple when it comes to shoveling in data, but seems like a more natural fit.

What does a method return?

  Methods return the last line in the method.

What kind of things can you pass into methods as arguments?

  Strings, integers, variables, arrays, hashes, booleans, methods nested in the parameters.

How can you pass information between methods?

  By assigning a value to a variable initially and assigning that variable as an argument in another method.

What concepts were solidified in this challenge, and what concepts are still confusing?

  Concepts of working with a hash really solidified for me. I have a better idea about pseudocoding. It also sured up how data is returned from methods implicitly vs explicitly. I'm not sure that I'm confused about anything else at this time.

=end
