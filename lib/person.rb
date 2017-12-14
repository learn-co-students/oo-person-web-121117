require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(money)
    @bank_account += money
    if money > 99
      "all about the benjamins"
    end
  end

  def take_bath
    @hygiene += 4
    self.hygiene = @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene = @hygiene
    @happiness += 2
    self.happiness = @happiness
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness = @happiness + 3
    friend.happiness += 3
    self.happiness=(@happiness)
    "Hi #{friend.name}! It's #{@name}. How are you?"
    # binding.pry
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else
      return 'blah blah blah blah blah'
    end
  end
end


# pry.Start
