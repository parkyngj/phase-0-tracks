# Young Ju (Sally) Park
# August 13th, 2016
# Module 6.3 - Attributes

# R0. Define a Santa class. Your class should have three instance methods (speak, eat_milk_and_cookies, and an initialize)

class Santa

  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

end # end Santa class definition

# R0. Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.

st = Santa.new
st.speak
st.eat_milk_and_cookies("sugar")