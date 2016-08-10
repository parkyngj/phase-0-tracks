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