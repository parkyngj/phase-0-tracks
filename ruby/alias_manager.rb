# A method that takes a spy's real name (e.g. "Felicia Torres") and creates a fake name with it by doing the following:

# Swap the first and last name.
# Change all the vowels (a,e,i,o,u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.
# So 'a' becomes 'e', 'u' becomes 'a', and 'd' becomes 'f'.

# Some examples: "Sally Park" becomes "Sesl Temmz". "John Doe" becomes "Fui Kujp".



### Define a helper method to change characters as instructed above. Takes in strings as an argument

def translate_char(char)

  # create a string to look up vowels in. since "u" turns into "a", add an extra "a" after "u"
  # this won't affect the behavior of looking up "a" if we use .index, since .index returns the first instance of the appearance in the string of the argument to .index

  vowels = "aeiouaAEIOUA"

  # create a string to look up consonants in. since "z" turns into "b", add an extra "b" after "z"
  # again, this won't affect the behavior of looking up "b" if we use .index for the same reasons above

  consonants = "bcdfghjklmnpqrstvwxyzbBCDFGHJKLMNPQRSTVWXYZB"

## check if the character is a space

  if char == " "

    ## if it is, then return a space

    return " "

## check if the character is a vowel by
  # selecting aeiou (case insensitive) in the one character string provided
  # checking if it is equal to the character provided

  elsif char == char[/[aeiou]/i]

    ## find the index of the character in vowels

    char_vowel_index = vowels.index(char)

    ## find the next vowel in vowels

    next_vowel = vowels[char_vowel_index + 1]

    ## return the next vowel

    return next_vowel

## if it's not a space and not a vowel, then it's a consonant (assuming proper data entry by user)

  else

    ## find the index of the character in consonants

    char_conso_index = consonants.index(char)

    ## find the next consonant

    next_conso = consonants[char_conso_index + 1]

    ## return the next consonant

    return next_conso

## close the if statement

  end

## close the translate_char method definition

end



### alias_manager Method takes in a string (in the format "Firstname Lastname") as an argument, and spits out a fake name based on the above protocol

def alias_manager(str)

## Swap the first and last name by:

## converting the string into an array using " " as the separator

  name_array = str.split(" ")

## calling reverse on the array to reverse the order of the array elements 

  name_array.reverse!

## consolidate the new array elements into one string with " " as the separator again

  fn_ln_swapped = name_array.join(" ")

## initialize new empty string to be the return value

  new_alias = ""

## cycle through the characters of the string

  fn_ln_swapped.each_char do |index|

    # for each character of the string, run translate_char on it

    new_alias << translate_char(index)

## close the do loop
  end

## return the result string
return new_alias

## close the alias_manager method definition
end



### DRIVER CODE

## Ask the user to enter a name, and return the fake name generated using alias_manager method.
puts "Welcome, agent. Please enter any number of full names (Firstname Lastname) to generate your fake names. To exit, type 'quit'."

## Use a data structure to store the fake names are they are entered.
puts "\nWhen you exit the program, all full names and their respective fake names will be displayed."
agent_name = gets.chomp

## Initialize an empty array to store the real names and fake names of each agent
aliases = []

## Until the user decides to quit the program by typing "quit":
until agent_name == "quit"

  ## Generate out a fake name for the current name being processed using the alias_manager method

  agent_fake_name = alias_manager(agent_name) 

  ## Print the generated fake name for the real name that the user entered

  p agent_fake_name 

  ## Store each agent's real name and fake name together as a hash in the aliases array.
  ## The agent's real name is the key (string class) and the agent's fake name is the value (also string class)

  aliases.push({agent_name => agent_fake_name}) 

  ## Prompt the user for another name

  puts "Enter another full name (Firstname Lastname) or type 'quit' to exit."

  agent_name = gets.chomp

# end the until loop

end 

## When the user exits the program, iterate through the array aliases containing all of the agent name(s) info, and print all of the data the user entered.

## iterate through the array

aliases.each do |agent| 

  ## grab the first key in the hash (Hash only has one key/value pair anyway) for agent's real name
  real_name = agent.keys[0] 

  ## grab the first value in the hash (Hash only has one key/value pair anyway) for agent's fake name
  fake_name = agent.values[0] 
  puts "Agent #{real_name} will be known as #{fake_name} on his/her mission."

## close the do loop
end 

## Says goodbye to the user.

puts "This program will self-destruct in .1 seconds."
puts "KABOOOOOOOOOOOOM!"