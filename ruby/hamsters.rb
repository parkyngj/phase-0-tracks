puts "What is your hamster's name?"
name = gets.chomp

puts "How loud is your hamster? (Pick from 1 to 10, 10 being the loudest)"
volume = gets.chomp.to_f

puts "What color fur does your hamster have?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
eligible = gets.chomp

def to_bool(str)
  if str == "y" 
    return true
  elsif  str == "n"
    return false
  else puts "User input for eligible variable invalid"
  end
end

eligible = to_bool(eligible)

puts "How old is your hamster? (Enter your answer in years. If you're not sure, then leave blank and press enter.)"
age = gets.chomp

if age == "" 
  age = nil
else age = age.to_f
end

puts "Hamster Name: #{name}"
puts "Volume: #{volume}"
puts "Fur Color: #{fur_color}"

if eligible
  puts "#{name} is a good candidate for adoption."
else puts "#{name} HAS BEEN TRIED, AND FOUND WANTING."
end

if age == nil
  puts "#{name}'s age is a mystery for the ages."
else puts "#{name} is #{age} yrs old."
end