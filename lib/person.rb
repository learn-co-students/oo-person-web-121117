require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def keep_points_in_range(points)
    if points > 10
      points = 10
    elsif points < 0
      points = 0
    else
      points = points
    end
  end

  def happiness=(new_happiness)
    @happiness = keep_points_in_range(new_happiness)
  end

  def hygiene=(new_hygiene)
    @hygiene = keep_points_in_range(new_hygiene)
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness + 2)
    self.hygiene=(@hygiene - 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    [self, friend].each do |name|
      name.happiness=(name.happiness + 3)
    end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      [self, friend].each do |name|
        name.happiness=(name.happiness - 2)
      end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      [self, friend].each do |name|
        name.happiness=(name.happiness + 1)
      end
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end


#
# lindsay = Person.new("Lindsay")
#
#     binding.pry
