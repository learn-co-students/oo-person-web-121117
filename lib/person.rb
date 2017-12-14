require "pry"


class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bankAccount
  end

  def happiness=(new_happiness)
    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
      @hygiene = 0
    else
      @hygiene = new_hygiene
    end
  end

    def happy?
      @happiness > 7
    end

    def clean?
      @hygiene > 7
    end

    def get_paid(salary)
      @bank_account = @bank_account + salary
      return "all about the benjamins"
    end

    def take_bath
      @hygiene = @hygiene + 4
      self.hygiene=(@hygiene)
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      @happiness = @happiness + 2
      @hygiene = @hygiene - 3
      self.happiness=(@happiness)
      self.hygiene=(@hygiene)
      "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      friends_call = [self, friend]
      friends_call.each do |name|
        name.happiness = name.happiness + 3
      end
      @happiness=(@happiness)
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
      conversation_participants = [self, person]
      if topic == "politics"
        conversation_participants.each do |name|
          name.happiness = name.happiness - 2
        end
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        conversation_participants.each do |name|
          name.happiness = name.happiness + 1
        end
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
      @happiness=(@happiness)
    end
end


# def happiness=(new_happiness)
#   @happiness = new_happiness.to_i.clamp(0,10)
# end
#
# def hygiene=(new_hygiene)
#   @hygiene = new_hygiene.to_i.clamp(0,10)
# end
