#


class Person

  attr_reader :name,:bank_account, :happiness, :hygiene

 def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end

 def happiness=(num)
   @happiness = num
   happiness_test(@happiness)
 end

 def hygiene=(num)
   @hygiene = num
   hygiene_test(@hygiene)
 end

 def bank_account=(num)
   @bank_account += num
 end

 def happiness_test(num)
   if num > 10
     @happiness = 10
   elsif num < 0
     @happiness = 0
   end
   @happiness
 end

 def hygiene_test(num)
   if num > 10
     @hygiene = 10
   elsif num < 0
     @hygiene = 0
   end
   @hygiene
 end

 def happy?
   @happiness > 7 ? true : false
 end

 def clean?
   @hygiene > 7 ? true : false
 end

 def get_paid(salary)
   @bank_account += salary
   return "all about the benjamins"
 end

 def take_bath
   self.hygiene = @hygiene + 4
   return "♪ Rub-a-dub just relaxing in the tub ♫"
 end

 def work_out
   self.happiness = @happiness + 2
   self.hygiene = @hygiene - 3
   return "♪ another one bites the dust ♫"
 end

 def call_friend(friend)
   self.happiness = @happiness + 3
   friend.happiness = friend.happiness + 3
   return "Hi #{friend.name}! It's #{self.name}. How are you?"
 end

 def start_conversation(person, topic)
   case topic
   when "politics"
     self.happiness = @happiness - 2
     person.happiness = person.happiness - 2
     return "blah blah partisan blah lobbyist"
   when "weather"
     self.happiness = @happiness + 1
     person.happiness = person.happiness + 1
     return "blah blah sun blah rain"
   else
     return "blah blah blah blah blah"
   end
 end

end
