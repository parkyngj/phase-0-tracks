# Declare an array and a hash, and populate each of them with some data.

hearthstone_heroes = ["Anduin", "Garrosh", "Gul'dan", "Jaina", "Malfurion", "Rexxar", "Thrall", "Uther", "Valeera"]

adventure_time_ages = {finn: 16, jake: 34, ice_king: "over 1000", bubblegum: 827, rainicorn: "unknown", marceline: 1000, lsp: 18, bmo: "over 1000"}

# Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.

# iterate through the array of Hearthstone heroes, adding that they are fun to play and printing the result
hearthstone_heroes.each do |hero|
  puts "#{hero} is fun to play!"
end

# modify the array of Hearthstone heroes, adding that they are fun and interactive. This will modify the variable hearthstone_heroes
hearthstone_heroes.map! do |hero|
  hero << " is fun and interactive!"
end

# iterate through the hash of ages of Adventure Time characters, printing the corresponding characters and their ages
adventure_time_ages.each do |char, age|
  puts "#{char} is #{age} years old!"
end

# Add sample calls of array/hash methods that take blocks, one for the array and one for the hash for each of the following:

# initialize hearthstone_heroes array again, since it was modified by calling map! to it above
hearthstone_heroes = ["Anduin", "Garrosh", "Gul'dan", "Jaina", "Malfurion", "Rexxar", "Thrall", "Uther", "Valeera"]

# 1. A method that iterates through the items, deleting any that meet a certain condition

# We will delete heroes off of the Hearthstone heroes list if they do not start with the letter "G" (
# .delete_if does modify the original array!
hearthstone_heroes.delete_if do |hero|
  hero[0] != "G"
end

# We will delete key/value pairs in the Adventure time character ages hash if they are not integers 
# .delete_if does modify the original hash!
adventure_time_ages.delete_if do |char, age|
  # When running to_i on a character that is not clearly converted into an integer, to_i turns the string into 0.
  # Hence, if the character age is a string and not an integer cleverly disguised as a string, then running to_i will make them 0 and this is how we will check
  # Since there are no characters in Adventure Time that are 0 years old in the hash, we don't need to check if age is actually equal to 0 while doing this check
  age.to_i == 0
end

# initialize hearthstone_heroes array again, since it was modified by calling .delete_if to it above
hearthstone_heroes = ["Anduin", "Garrosh", "Gul'dan", "Jaina", "Malfurion", "Rexxar", "Thrall", "Uther", "Valeera"]

# initialize adventure_time_ages hash again, since it was modified by calling .delete to it above in the do loop
adventure_time_ages = {finn: 16, jake: 34, ice_king: "over 1000", bubblegum: 827, rainicorn: "unknown", marceline: 1000, lsp: 18, bmo: "over 1000"}

# 2. A method that filters a data structure for only items that do satisfy a certain condition

# We will filter the Hearthstone heroes list by heroes whose names have 7 characters in them 
# .find_all doesn't modify the variable hearthstone_heroes
hearthstone_heroes.find_all do |hero|
  hero.length == 7
end

# We will filter the list of Adventure time characters and their ages by Adventure time characters whose exact ages are known
# .select doesn't modify the variable adventure_time_ages
adventure_time_ages.select do |char, age|
  # When a string that is not clearly converted to an integer gets .to_i called to it, we get "0", so we just need to check if convertion to integer is not 0
  age.to_i != 0 
end

# 3. A different method that filters a data structure for only items satisfying a certain condition

# We will filter the Hearthstone hero list by heroes whose names start with n
# .reject doesn't modify the variable hearthstone_heroes
hearthstone_heroes.reject do |hero|
  hero[-1] != "n"
end

# We will filter the hash of Adventure time characters and their ages by key/value pairs where the value is a string
# .keep_if does modify the variable adventure_time_ages
adventure_time_ages.keep_if do |char, age|
  age.to_i == 0
end

# initialize adventure_time_ages hash again, since it was modified by calling .keep_if to it above in the do loop
adventure_time_ages = {finn: 16, jake: 34, ice_king: "over 1000", bubblegum: 827, rainicorn: "unknown", marceline: 1000, lsp: 18, bmo: "over 1000"}

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops

# We will remove items from the Hearthstone hero list until we reach a hero whose name is strictly longer than 7 characters.
# .drop_while doesn't modify the variable hearthstone_heroes
# Note To Self: .take_while does the opposite of .drop_while

hearthstone_heroes.drop_while do |hero|
  hero.length < 8
end

# We will remove items from the hash of Adventure time characters and their ages by key/value pairs until we reach an age that is exactly 1000 (Marceline's age)
# .map (for hashes) does modify the variable adventure_time_ages, similar to .map for arrays
adventure_time_ages.map do |char, age|
  if age != 1000
    adventure_time_ages.delete(char)
  end
  break if age == 1000
end

# Below returns the new value of adventure_time_ages, which is {:marceline=>1000, :lsp=>18, :bmo=>"over 1000"}
p adventure_time_ages

# Another way for Q4 for hsh class, not using .map:
# Use .drop_while, similar to ary

# initialize adventure_time_ages again since it was modified above by .map call

adventure_time_ages = {finn: 16, jake: 34, ice_king: "over 1000", bubblegum: 827, rainicorn: "unknown", marceline: 1000, lsp: 18, bmo: "over 1000"}

# .drop_while on a hash returns an array, we store it as a variable
adventure_time_ages_upto_marceline_ary = adventure_time_ages.drop_while do |char, age|
  age != 1000
end

# returns [[:marceline, 1000], [:lsp, 18], [:bmo, "over 1000"]]

# initialize an empty has to restore the data in the above array into a hash
adventure_time_ages_upto_marceline = {}

# iterate through the array. each item in an array is an array itself, with 2 entries
# the first entry is the character name - put that as the key
# the second entry is the character age - put that as the corresponding value
adventure_time_ages_upto_marceline_ary.each do |char|
  adventure_time_ages_upto_marceline[char[0]] = char[1]
end
