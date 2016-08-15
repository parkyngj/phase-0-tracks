# Young Ju (Sally) Park
# August 15th, 2016
# Module 6.4 Solo Challenge: Designing and Implementing a Class

######### R0. Design a Class
# Design a class representing anything you like.
# Your class must have at least three attributes (using at least two data types) whose values will vary from instance to instance.
# Your class must have at least three methods, at least one of which takes an argument.

### CLASS: Dragon
## Attributes:
#   Name (String)
#   Age (Integer)
#   Color (String)
#   Friendly? (Boolean)
#   Current Passengers (Array of Strings. Default to empty, can only be modified if Friendly? is true)
## Methods:
#   Breathe fire at x
#   Celebrate birthday (increase age by one)
#   Train (to make dragon friendly)
#   Mount a passenger y onto (only if Friendly? is true)

######### R1. Write Your Class
# Implement your class.
# Your class should use attr_reader and attr_accessor.
# Use an initialize method that sets at least one attribute.

class Dragon
  attr_reader :color, :friendly, :passengers, :age
  attr_accessor :name

  def initialize(name,age,color)
    @name = name
    @age = age
    @color = color
    @friendly = false
    @passengers = []
    puts "#{@name} flexes its mighty #{@color} wings!"
  end

  def breathe_fire(item)
    puts "#{@name} deflagrates #{item} with its scathing breath!"
  end

  def celebrate_birthday
    @age += 1
    puts "#{@name} is now #{@age} year(s) old! It looks even more menacing."
  end

  def train
    @friendly = true
    puts "#{name} looks more tame and docile now."
  end

  def mount(person)
    if @friendly
      @passengers << person
      puts "#{@name} bends its neck down, and #{person} scrambles onto its back."
    else puts "#{@name} rears its head angrily and flails its tail at #{person}! You may want to train your dragon first."
    end
  end

end #ends Dragon class definition


######### DRIVER CODE

# # Instantiate a new Dragon named Nefarian, age 1, color red. By default, Nefarian is not friendly and has no passengers.
# whelp = Dragon.new("Nefarian",1,"red")
# # We can read the whelp's color, but we can't write it.
# p whelp.color
# # We can read the whelp's friendliness, but we can't write it.
# p whelp.friendly
# # We can read the whelp's passengers, but we can't write it.
# p whelp.passengers
# # We can read the whelp's age, but we can't write it.
# p whelp.age
# # We can increase the whelp's age by one by calling celebrate_birthday on it.
# whelp.celebrate_birthday
# # Its age is not 2.
# p whelp.age
# # We can read and write the whelp's name.
# whelp.name = "Onyxia"
# # We changed the whelp's name to Onyxia.
# p whelp.name
# # We can make the whelp immolate New York.
# whelp.breathe_fire("New York")
# # We can try to make Sally mount the whelp, but since it isn't friendly, it will not allow Sally to ride it.
# whelp.mount("Sally")
# # Mount method wasn't successful in modifiying the whelp's passengers. This is still an empty array.
# p whelp.passengers
# # We can call train on the whelp to make it friendly.
# whelp.train
# # Now, the value of friendly is true.
# p whelp.friendly
# # Mount method now succeeds, and we get a success message.
# whelp.mount("Sally")
# # We can check the whelp's passengers, and we can see that Sally is on the whelp's back.
# p whelp.passengers
# # Now that the whelp is friendly, we can add as many passengers as we want.
# whelp.mount("Cas")
# whelp.mount("Jess")
# whelp.mount("Resdan")
# p whelp.passengers

######### R2. Use Your Class in a Program
# Modify your program so that it has a user interface.
# Your user should be allowed to create as many instances of your class as they like.
# Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. Store these class instances in an array.
# When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation of what was created.

# initialize an empty array of user dragons
drags = []

puts "Hello, and welcome to the mythical dragon generator!"

# instantiate a new variable to flag whether or not the user wishes to create more dragons
generate = nil

# until the user changes this flag to false, we create new dragons
until generate == false

  puts "Please enter your new dragon's name."
  dname = gets.chomp

  # change the given string to an integer, since age attribute is intended to be an integer
  puts "Enter your new dragon's age in years."
  dage = gets.chomp.to_i

  puts "Enter your new dragon's color."
  dcolor = gets.chomp

  # instantiate new Dragon with given name, age, and color
  user_dragon = Dragon.new(dname,dage,dcolor)

  # ask the user if they would like to change the friendly attribute on the dragon, since it isn't something you can set using initialize
  puts "Congratulations, #{user_dragon.name} has been created!
  \nWould you like your dragon to come pre-trained? (y/n)"
  dtrain = gets.chomp

  if dtrain == "y"
    user_dragon.train
  elsif dtrain == "n"
    puts "Okay, then."
  else puts "Please enter 'y' or 'n'."
    dtrain = gets.chomp
  end

  # ask the user if they would like to change the passenger attribute on the dragon, since it isn't something you can set using initialize
  # however, this is only if the user's dragon is friendly
  if user_dragon.friendly
    puts "Would you like to put any passengers on your new dragon #{user_dragon.name}? (y/n)"
    want_pass = gets.chomp
      if want_pass == "n"
        puts "Okay, then."
      elsif want_pass == "y"
        puts "Type each passenger's name, separated by the enter key. When you are done, type done."
        dpass = gets.chomp
          until dpass == "done"
            user_dragon.mount(dpass)
            dpass = gets.chomp
          end
      else puts "Please enter 'y' or 'n'."
        want_pass = gets.chomp
      end
  end

  # append the user's new dragon to the array of all of the user's dragons (initialized above)
  drags << user_dragon

  # ask the user if they would like to create another dragon
  puts "Would you like to create another dragon? (y/n)"
  more_drag = gets.chomp

  # if yes, then the until loop condition above passes and the entire block inside runs again, allowing user to continue creating dragons
  if more_drag == "y"
    generate = true
  # if no, then the until loop condition above fails, and we move out of the until loop
  elsif more_drag == "n"
    generate = false
  else puts "Please enter 'y' or 'n'."
    more_drag = gets.chomp
  end

end # ends the until loop


puts "You created the following dragon(s) using our service:"
# loop through the array of all of the user's created dragons, calling out each instance's attributes
drags.each do |drag|
  puts "\n#{drag.name} the #{drag.color} dragon. #{drag.name} is #{drag.age} year(s) old."
  # depending on whether the dragon is friendly or not, we will print different things
  if drag.friendly
    puts "#{drag.name} is well-trained and friendly towards humans.\nIt looks loyal and gentle."
  else
    puts "#{drag.name} is hostile towards humans.\nIt looks proud and haughty."
  end

  # depending on whether the dragon is carrying passengers, or not, we will print different things
  if drag.passengers.empty?
    puts "#{drag.name} is not carrying any passengers."
  else
    puts "#{drag.name} is carrying the following passenger(s):"
    p drag.passengers.join(", ")
  end
end # ends the do loop above