# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn

    def initialize(uname, color = "silver")
        @uname = uname
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

    def initialize(vname, pet = "bat", thirsty = true)
        @vname = vname
        @pet = pet 
        @thirsty = true
        #This is working with thirsty = thirsty and thirsty = true. Unsure if ther is a big difference. 
        #Also works if I remove = true in the parameter and have thirsty = true. Unsure of the "professional" way to do this.  

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

    def initialize(dname, rider, color, is_hungry=true)
        @dname = dname
        @rider = rider
        @color = color
        @is_hungry = is_hungry
    end 

    def eat(meals)

        if meals >= 4
            @is_hungry = false
        end
    end 

end 

dragon1 = Dragon.new("Balerion", "Aegon", "Black")

p dragon1
dragon1.eat(4)
p dragon1

#I have had no luck creating a method that keeps track of a variable and changes the is_hungry value once it is called 4 seperate times.
#I was thinking something like:

# def eat2
#     food = (food + 1)

#     if food =>4
#         is_hungry = false
#     end
# end 

# I am getting a lot of different errors. I will play around with this more later.


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
 
class Hobbit 

    attr_reader :age
    def initialize(hname, disposition, age = 0, is_adult = false, is_old = false, has_ring = false)
        @hname = hname
        @disposition = disposition
        @age = age
        @is_adult = is_adult
        @is_old = is_old
        @has_ring = false

        if hname == "Frodo"
            @has_ring = true
        end 


    def celebrate_birthday
        @age = age + 1
        if age >= 101
            @is_old = true
         

        elsif age >= 33
            @is_adult = true
        end 
    end 
    end
end 

hobbit1 = Hobbit.new("Frodo", "Adventerous", 34)

p hobbit1
hobbit1.celebrate_birthday
hobbit1.celebrate_birthday
p hobbit1

#I have having two seperate problems depending upon where I put my if statements for the age changes. 
#If I put them within my class initialization, is_adult and is_old will be the correct values but the birthday method will not change anything.
#If I do it like I have it now, the default values will not change. I suppose if we start every hobbit at age 0 and just run celebrate_birthday as many times as needed it will all be correct at the end.
#However that doesnt seem too effective. I also tried playing around with parameters but given that we have to +1 the age value instead of use parameters to apply an age, I don't think that is the road we are supposed to take.
#Learning a lot! Very exciting! 