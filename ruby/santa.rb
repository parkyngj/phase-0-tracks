# Young Ju (Sally) Park
# August 13th, 2016
# Module 6.3 - Attributes

# R0. Define a Santa class. Your class should have three instance methods (speak, eat_milk_and_cookies, and an initialize)

class Santa

  def initialize(gender, ethnicity)

    # R1. Update your Santa class with the following attributes.
    # gender, which will be a string passed in on initialization
    @gender = gender
    # ethnicity, which will be a string passed in on initialization
    @ethnicity = ethnicity
    # reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization, it simply gets a default value.
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    # age, which is not passed in on initialization and defaults to 0.
    @age = 0
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  # R2. "getter methods"

  # The method age should simply return @age.
  def age
    @age
  end

  # The method ethnicity should return @ethnicity.
  def ethnicity
    @ethnicity
  end

  # R3. "setter methods" - Add three attribute-changing methods to your Santa class.

  # celebrate_birthday should age Santa by one year.
  def celebrate_birthday
    @age = @age + 1
  end

  # get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings.
  def get_mad_at(reindr)
    current_ranking = @reindeer_ranking.index(reindr)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(current_ranking))
  end

  # allow gender to be reassigned from outside the class definition
  def change_gender(new_gend)
    @gender = new_gend
  end

end # end Santa class definition

# R0. Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.

# st = Santa.new
# st.speak
# st.eat_milk_and_cookies("sugar")

# R1. Add some diverse initializations to your file as driver code.

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

# R2. Checking if getter and setter methods work.

st = Santa.new("f","Korean")
p st.age
p st.celebrate_birthday
p st.age
p st.ethnicity
p st.instance_variable_get(:@reindeer_ranking)
p st.get_mad_at("Dancer")
p st.instance_variable_get(:@reindeer_ranking)
p st.instance_variable_get(:@gender)
p st.change_gender("agender")