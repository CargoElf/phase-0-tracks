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
  return grocery_list
end

def add_item(item,amount,grocery_list)
  new_hash = {item => amount}
  grocery_list.merge(new_hash)
end

grocery_list = create_list("carrots apples cereal pizza")

p add_item("milk", 5, grocery_list)