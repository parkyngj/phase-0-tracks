#Christopher Mendoza & Young Ju

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
 # initialize empty hash called grocery_list
 # break the string into an array of items using .split(" ")
 # iterate through array, adding each item as key with default quantity as value to the empty hash grocery_list above
 # set default quantity: 1
 # print the list to the console [can you use one of your other methods here?]: print grocery_list back to user
# output: the hash grocery_list

def create_list(items)
 list_hash = {}
 item_arry = items.split(" ")
 item_arry.each { |item| list_hash[item] = 1 }
 print_list(list_hash)
 return list_hash
end

# Method to add an item to a list
# input: grocery list, item name, and optional quantity
# steps:
 # take grocery list hash from create list method
 # add new key/value pair from item name and optional quantity
# output: new updated grocery list hash

def add_item(grocery_list_hash, new_item, qty = 1)
 grocery_list_hash[new_item] = qty
 return grocery_list_hash
end

# Method to remove an item from the list
# input: grocery list, item name
# steps:
 # take grocery list hash from create list method
 # delete key/value pair from item name and optional quantity
# output: new updated grocery list hash

def remove_item(grocery_list_hash, item)
  grocery_list_hash.delete(item)
  return grocery_list_hash
end

# Method to update the quantity of an item
# input: grocery list, item name, new desired quantity
# steps:
 # take grocery list hash from create list method
 # update the key/value pair from item name and new desired quantity
# output: new updated grocery list hash

def update_qty(grocery_list_hash, item, new_qty)
 if grocery_list_hash.has_key?(item)
   grocery_list_hash[item] = new_qty
 else
   puts "The #{item} is not on the list"
 end
 return grocery_list_hash
end

# Method to print a list and make it look pretty
# input: grocery list hash
# steps:
 # iterate through grocery list hash
 # use puts to interpolate keys and values and print data to user (such as Item : Qty)
# output: strings with data from grocery list hash

def print_list(grocery_list_hash)
 puts "Behold the wonderful grocery list!"
 puts "----------------------------------"
 grocery_list_hash.each { |item, qty|
   puts "#{item} : #{qty}"
 }
end


# DRIVER CODE
ourlist = create_list('Orange Milk Tomatoe Bread' )
p ourlist
add_item(ourlist, 'ice cream', 10)
add_item(ourlist, 'shrimp')
p ourlist
remove_item(ourlist, 'Milk')
p ourlist
update_qty(ourlist, 'ice cream', 20)
p ourlist
print_list(ourlist)
update_qty(ourlist, 'mushroom', 200)

## R5. Reflect
# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection.

# What did you learn about pseudocode from working on this challenge?

# Always specify input and output. Don't put specific methods, in case people want to use your pseudocode to write in another language

# What are the tradeoffs of using arrays and hashes for this challenge?

# I think hashes were more appropriate for this challenge, since we were trying to store "pairs" of information (item/qty)

# What does a method return?

# The last thing that gets evaluated

# What kind of things can you pass into methods as arguments?

# Objects, results of other methods, you can also set default methods or variable # of methods

# How can you pass information between methods?

# Use method calls as arguments, or store the result of doing a method in a variable and then pass the variable as an argument

# What concepts were solidified in this challenge, and what concepts are still confusing?

# Iteration, accessing key/value pairs in hashes.
# Still confusing: default values as arguments, variable # of arguments