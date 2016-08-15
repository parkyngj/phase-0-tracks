# Young Ju (Sally) Park
# August 15th, 2016
# Module 6.5: Modules (oh the irony)

# R1. Practice Using Modules

# R1 #1. Declare your module.
module Shout

  # R1 #3. Add a method for yelling angrily.
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  # R1 #4. Add a yelling_happily method to our module.
  def self.yelling_happily(words)
    "OMG " + words + "!!!" + " :D"
  end
end

# R1 #5. Add driver code underneath your module declaration that calls both of your module methods.
p Shout.yell_angrily("GAH I'VE BEEN STARING AT MY COMPUTER SCREEN TOO LONG")
p Shout.yelling_happily("I just got accepted into clown school")

# NTS: in order to load new module in irb, we use require_relative
# ex. require_relative 'shout'
# we can ask our module for its singleton_methods (methods that only take one argument) by doing Shout.singleton_methods after we required it as a relative