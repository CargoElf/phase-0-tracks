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


What are the tradeoffs of using arrays and hashes for this challenge?


What does a method return?


What kind of things can you pass into methods as arguments?


How can you pass information between methods?


What concepts were solidified in this challenge, and what concepts are still confusing?


=end
