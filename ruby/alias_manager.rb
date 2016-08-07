# A method that takes a spy's real name (e.g. "Felicia Torres") and creates a fake name with it by doing the following:

# Swap the first and last name.
# Change all the vowels (a,e,i,o,u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.
# So 'a' becomes 'e', 'u' becomes 'a', and 'd' becomes 'f'.

# Some examples: "Sally Park" becomes "Sesl Temmz". "John Doe" becomes "Fui Kujm".

## DENOTES PSEUDOCODE


## Method in a string as an argument.

## Swap the first and last name by

## converting the string into an array using " " as the separator

## calling reverse on the array to reverse the order of the array elements 

## consolidate the new array elements into one string with " " as the separator again

## initialize new empty string to be the return value

## cycle through the characters of the string

## if the character is a space, append a space to the returned string

## if the character is a vowel, append the next vowel in aeiou or AEIOU to the returned string

## else, append the next consonant in {A-Z}\{AEIOU} or {a-z}\{aeiou} to the returned string

## close the if statement

## close the do loop

## return the result string

## close the method definition