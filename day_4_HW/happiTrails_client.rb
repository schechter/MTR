class Client
    attr_accessor :name, :age, :gender, :kids, :pets

    def initialize(name, age, gender, kids, pets = [])
        @name = name
        @age = age
        @gender = gender
        @kids = kids
        @pets = pets
    end

    def give_animal(shelter, animal)
    end

    def adopt_animal(shelter, animal)
    end

end
