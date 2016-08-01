puts "What is your hamster's name?"
name = gets.chomp

puts "How loud is your hamster? (Pick from 1 to 10)"
volume = gets.chomp

puts "What color fur does your hamster have?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
eligible = gets.chomp

puts "How old is your hamster? (Enter your answer in years. If you're not sure, then leave blank and press enter."
age = gets.chomp

if age == "" 
  age = nil
end
  