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

def yn_to_bool(str)
  result = nil

  if str == "y"
    result = true
  elsif str == "n"
    result = false
  else "Invalid user input (should type 'y' or 'n')"
  end

  return result
end

pricing_plan_str = gets.chomp
pricing_plan = yn_to_bool(pricing_plan_str)

designer_info[:wants_pricing_plan] = pricing_plan

# Print the hash back out to the screen when the designer has answered all of the questions.

p designer_info

# Give the user the opportunity to update a key (no need to loop, once is fine). Assume the user will correctly input a key that exists in your hash (no need to handle user errors).


# If the designer says "none", then leave the hash alone.



# Print the latest version of the hash.

