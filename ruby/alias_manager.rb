# A method that takes a spy's real name (e.g. "Felicia Torres") and creates a fake name with it by doing the following:

# Swap the first and last name.
# Change all the vowels (a,e,i,o,u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.
# So 'a' becomes 'e', 'u' becomes 'a', and 'd' becomes 'f'.

# Some examples: "Sally Park" becomes "Sesl Temmz". "John Doe" becomes "Fui Kujp".

## DENOTES PSEUDOCODE


## Define a helper method to change characters as instructed above. Takes in strings as an argument

def translate_char(char)

  translated_char = ""

  vowels = "aeiouaAEIOUA"
  consonants = "bcdfghjklmnpqrstvwxyzbBCDFGHJKLMNPQRSTVWXYZB"

## if the character is a vowel,

  if char == char[/[aeiou]/i]

  ## append the next vowel in aeiou or AEIOU to the returned string

    char_vowel_index = vowels.index(char)
    next_vowel = vowels[char_vowel_index + 1]

    translated_char << next_vowel

## else, append the next consonant in {A-Z}\{AEIOU} or {a-z}\{aeiou} to the returned string

  else

    char_conso_index = consonants.index(char)
    next_conso = consonants[char_conso_index + 1]

    translated_char << next_conso

## close the if statement

  end

## return the translated character

  return translated_char

## close the translate_char method definition
end



## alias_manager Method takes in a string as an argument.

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

  ## if the character is a space, append a space to the returned string

    if index == " "
      new_alias << " "

  ## if the character is not a space, then run the character through the translate_char method
    else
      new_alias << translate_char(index)

  ## close the if statement
    end

## close the do loop
  end

## return the result string
return new_alias

## close the alias_manager method definition
end

# DRIVER CODE

## Ask the user to enter a name, and return the fake name generated using alias_manager method.
puts "Welcome, agent. Please enter any number of full names (Firstname Lastname) to generate your fake names. To exit, type 'quit'."

## Use a data structure to store the fake names are they are entered.
puts "When you exit the program, all full names and their respective fake names will be displayed."
agent_name = gets.chomp


aliases = []

while agent_name != "quit"
  agent_fake_name = alias_manager(agent_name)
  p agent_fake_name
  aliases.push({agent_name => agent_fake_name})
  puts "Enter another full name (Firstname Lastname) or type 'quit' to exit."
  agent_name = gets.chomp
end

## When the user exits the program, iterate through the data structure and print all of the data the user entered.

aliases.each do |agent|
  real_name = agent.keys[0]
  fake_name = agent.values[0]
  puts "Agent #{real_name} will be known as #{fake_name} on his/her mission."
end

puts "This program will self-destruct in .1 seconds."
puts "KABOOOOOOOM!"