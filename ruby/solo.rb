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

# Instantiate a new Dragon named Nefarian, age 1, color red. By default, Nefarian is not friendly and has no passengers.
whelp = Dragon.new("Nefarian",1,"red")
# We can read the whelp's color, but we can't write it.
p whelp.color
# We can read the whelp's friendliness, but we can't write it.
p whelp.friendly
# We can read the whelp's passengers, but we can't write it.
p whelp.passengers
# We can read the whelp's age, but we can't write it.
p whelp.age
# We can increase the whelp's age by one by calling celebrate_birthday on it.
whelp.celebrate_birthday
# Its age is not 2.
p whelp.age
# We can read and write the whelp's name.
whelp.name = "Onyxia"
# We changed the whelp's name to Onyxia.
p whelp.name
# We can make the whelp immolate New York.
whelp.breathe_fire("New York")
# We can try to make Sally mount the whelp, but since it isn't friendly, it will not allow Sally to ride it.
whelp.mount("Sally")
# Mount method wasn't successful in modifiying the whelp's passengers. This is still an empty array.
p whelp.passengers
# We can call train on the whelp to make it friendly.
whelp.train
# Now, the value of friendly is true.
p whelp.friendly
# Mount method now succeeds, and we get a success message.
whelp.mount("Sally")
# We can check the whelp's passengers, and we can see that Sally is on the whelp's back.
p whelp.passengers
# Now that the whelp is friendly, we can add as many passengers as we want.
whelp.mount("Cas")
whelp.mount("Jess")
whelp.mount("Resdan")
p whelp.passengers