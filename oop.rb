# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color
    def initialize(name, color = "silver")
        @name = name
        @color = color 
        #I opted to make color a flexible attribute. 
    end


    def say(unicorn_speech)
        "*~* #{unicorn_speech}"
    end

end 

unicorn1= Unicorn.new("Shimmer")
p unicorn1
p unicorn1.say("This is how you say it in unicorn!")

puts "\n"

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirsty 
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet 
        @thirsty = true

    end

    def drink
        @thirsty = false
    end
end 

vampire1 = Vampire.new("The Count", "Unicorn")

p vampire1
vampire1.drink
p vampire1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :is_hungry

    def initialize(name, rider, color, is_hungry=true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
        @counter = 0
    end 

    def eat
        @counter = @counter += 1 
        if @counter == 4
            @is_hungry = false
        end
    end 

end 

dragon1 = Dragon.new("Balerion", "Aegon", "Black")

p dragon1
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
p dragon1


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
 
class Hobbit 

    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
    def initialize(name, disposition, age)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = false
    end

    def celebrate_birthday
        @age = age + 1
        if age >= 101
            @is_old = true
         
        elsif age >= 33
            @is_adult = true
        end 
    end

    
    def hob_init
        if @name == "Frodo"
            @has_ring = true
        end 

        if age >= 101
            @is_old = true
         
        elsif age >= 33
            @is_adult = true
        end 
    end 
end 

hobbit1 = Hobbit.new("Frodo", "Adventerous", 32)
hobbit2 = Hobbit.new("Pippen", "Jester", 100)

hobbit1.hob_init
p hobbit1
hobbit1.celebrate_birthday
hobbit1.celebrate_birthday
p hobbit1

hobbit2.hob_init
p hobbit2
hobbit2.celebrate_birthday
p hobbit2
