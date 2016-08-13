## Release 0: Design a Class
# We design a puppy class, defining which characteristics (corresponding to attributes) and behaviors (corresponding to methods) a Puppy class might have.

# ---------------------- PUPPY CLASS ----------------------

# CHARACTERISTICS
# Name
# Breed
# Gender
# Friendliness

# BEHAVIOR
# Bark At
# Wag Tail
# Fetch

# 6-1 R0 Q1. In IRB, declare your Puppy class
class Puppy

  # 6-2 R1 Q1. Add a method to your Puppy class named initalize. It should print "initializing new puppy instance ..."
  # 6-2 R1 Q2. Without changing your driver code, run the program. Does initialize run? When?
  ## It runs whenever I make a new instance of Puppy class.
  def initialize
    puts "Initializing new puppy instance..."
  end

  # Define a method for the puppy class to fetch an object
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  # 6-2 R0 02. Add a speak method that takes an integer, and then prints "Woof!" that many times
  def speak(int)
    int.times do
      puts "Woof!"
    end
  end

  # 6-2 R0 03. Add a roll_over method that just prints "*rolls over*".
  def roll_over
    puts "*rolls over*"
  end

  # 6-2 R0 04. Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
  def dog_years(int)
    int / 9
  end

  # 6-2 R0 05. Add one more trick -- whichever one you like.
  # Add a shake method that doesn't take any inputs, and makes the dog hold out his paw to be shaken.

  def shake
    puts "*holds out paw*"
  end

end

# 6-2 R2 Design and implement your own class. It should have an initialize method and at least two other instance methods.
class Rabbit
  def initialize(name = "", owner = "", color ="")
    @name = name
    @owner = owner
    @color = color
  end

  def om_nom_nom(food)
    puts("#{@name} is om nom nomming on a #{food}")
  end

  def print_info
    puts("Rabbit name: #{@name}")
    puts("Rabbit owner: #{@owner}")
    puts("Rabbit color: #{@color}")
  end
end


rabbit_arr = []

# 6-2 R2 #2. Modify your loop so that it stores all of the instances in a data structure.
50.times{|idx|
  rabbit_arr[idx] = Rabbit.new(name = (idx + 1).to_s)
  rabbit_arr[idx].print_info
}

# 6-2 R2 R3. Iterate over that data structure using .each and call the instance methods you wrote on each instance.
rabbit_arr.each {|bunny|
  bunny.om_nom_nom("hay")

## DRIVER CODE

# 6-2 R0 Q1. Initialize an instance of Puppy, and verify that your instance can now fetch a ball.
# 6-2 R0 06. Demonstrate that all of the methods in Puppy class work as expected.

popper = Puppy.new
popper.fetch("ball")
popper.roll_over
popper.dog_years(23)
popper.shake