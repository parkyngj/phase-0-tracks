class Dancer
  attr_reader :name, :card
  attr_accessor :age

  def initialize(name,age)
    @name = name
    @age = age
    # dance card queue initialized as empty array
    @card = []
  end # ends initialize definition

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

  # set limitations on how many partners can be queued on the dance card (3)

  def queue_dance_with(person)
    if @card.length < 3
      @card << person
    else "There are already three people waiting to dance with #{@name}!"
    end
  end

  def begin_next_dance
    next_dancer = @card.shift
    "Now dancing with #{next_dancer}."
  end

end #ends Dancer class definition