class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness
        self.happiness (0..10)
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(amount)
        (self.bank_account += amount)
        return "all about the benjamins"
    end

    def take_bath
        (self.hygiene += 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        (self.happiness += 2)
        (self.hygiene -= 3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        (self.happiness += 3)
        return "Hi #{friend}! It's #{self}. How are you?"
    end

    def start_conversation(friend, topic)
    end

end