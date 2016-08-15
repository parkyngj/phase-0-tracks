# Young Ju (Sally) Park
# August 15th, 2016
# Module 6.5: Modules (oh the irony)

# R2. Mix in a Module

# R2 #2. Let's write a Flight module (do that above our class declarations, at the top of the file)
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

# R2 #1. Declare classes for a bird and a plane.

# R2 #3. Add your module to your Bird and Plane classes.

class Bird
  include Flight
end

class Plane
  include Flight
end

# R2. #4 Now, instances of our Bird and Plane classes will have the ability to take off.
# See for yourself by adding this code to the bottom of the file and running it from the command line:

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)