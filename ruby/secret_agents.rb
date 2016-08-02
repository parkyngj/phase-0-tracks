# OUR METHOD DECLARATIONS

# Helper method for the opposite of built-in .next, a becomes z
def reverse_helper(letter)

  rev_alph = "abcdefghijklmnopqrstuvwxyz".reverse

  if letter == "a"
    return "z"
  else
    return rev_alph[rev_alph.index(letter) + 1]
  end

  end

# Encrypt any string, outputs a string with letters advanced by 1 in the alphabet, z becomes a
def encrypt(string)

  encrypted_string = ""

  # Get length of string
  length = string.length

  # Initialize an index/counter

  i = 0

  # While index/counter is less than the length of the string

  while i < length
    if string[i] == " "
      encrypted_string += " "
      i += 1
    elsif string[i] == "z"
      encrypted_string += "a"
      i += 1
    else
      encrypted_string += string[i].next
      i += 1
    end
  end

  return encrypted_string

end

# Decrypt any string, outputs a string with letters replaced by the letter that comes before it in the alphabet
def decrypt(string)

  decrypted_string = ""

  # Get length of string
  length = string.length
  # Initialize an index/counter
  i = 0
  # While index/counter is less than the length of the string

  while i < length
    if string[i] == " "
      decrypted_string += " "
      i += 1
    else
      decrypted_string += reverse_helper(string[i])
      i += 1
    end
  end

  return decrypted_string

end

# OUR DRIVER CODE

# asks the user their name
puts "Enter your name, agent."
name = gets.chomp

# greet the user, ask them if they want to encrypt or decrypt
puts "Greetings, agent #{name}. Would you like to decrypt or encrypt a password? (Type decrypt or encrypt)"
pref = gets.chomp

# asks the user for the password they would like to en/decrypt
puts "What is this secret password you speaketh of?"
pw = gets.chomp

# en/decrypt password depending on user preference
if pref == "encrypt"
  p encrypt(pw)
elsif pref == "decrypt"
  p decrypt(pw)
else puts "You didn't specify if you wanted to encrypt or decrypt."
end

# say bye :)
puts "This program will self-destruct in 30 seconds."