## A program that will allow an interior designer to enter the details of a given client: Collect the client's name, age, # of children, decor theme, etc.

## Initialize empty hash
designer_info = {}

# Ask user for their name. (To be stored as a string)
puts "What is your name?"
name = gets.chomp

designer_info[:name] = name

# Ask the user for their age. (To be stored as an integer)
puts "What is your age?"
age = gets.chomp.to_i

designer_info[:age] = age

# Ask the user for # of children. (To be stored as an integer)
puts "How many children do you have?"
children = gets.chomp.to_i

designer_info[:children] = children

# Ask the user for their decor theme. (To be stored as a string)
puts "What is your desired decor theme?"
decor_theme = gets.chomp

designer_info[:decor_theme] = decor_theme

# Ask the user if they are interested in our special pricing plan. (To be stored as a boolean value)
puts "Are you interested in our special pricing plan? (y/n)"


## A method to convert a "y"/"true" or "n"/"false" string into true or false boolean value respectively
def to_bool(str)
  result = nil

  if str == "y" || str == "true"
    result = true
  elsif str == "n" || str == "false"
    result = false
  else "Invalid user input (should type 'y' or 'n')"
  end

  return result
end

pricing_plan_str = gets.chomp
pricing_plan = to_bool(pricing_plan_str)

designer_info[:wants_pricing_plan] = pricing_plan

# Print the hash back out to the screen when the designer has answered all of the questions.
p designer_info

# Give the user the opportunity to update a key (no need to loop, once is fine). Assume the user will correctly input a key that exists in your hash (no need to handle user errors).
puts "Would you like to update a key? (If not, then enter 'none')"
key_to_update = gets.chomp

if key_to_update != "none"
  puts "Enter the new value of the key you chose to update."
## We must convert the string provided to a symbol, since the user will enter the key name that they want to alter as a string.
  key_to_update = gets.chomp.to_sym
  updated_value = gets.chomp
## Depending on the key that the user wants to update, we might need to convert data types.
## If the key that the user wants to update is age or # of children, then we need to convert updated_value to an integer
  if key_to_update == :age || key_to_update == :children
  updated_value = updated_value.to_i
## If the key that the user wants to update is whether they want the pricing plan or not, then we need to convert updated_value to a boolean
  elsif key_to_update == :wants_pricing_plan && (updated_value == "true" || updated_value == "false")
## Here, we use the to_bool method that we defined earlier
  updated_value = to_bool(updated_value)
## Otherwise, the key that the user wanted to update was "name" or "decor_theme", which should both stay as strings.
  else updated_value = updated_value.to_str
  end
# If the designer says "none", skip it.
else puts "You entered 'none.'"
end

designer_info[key_to_update] = updated_value

# Print the latest version of the hash.
p designer_info