class Animal
    attr_accessor :name, :breed, :age, :gender, :favorite_toy, :owner

    def initialize(name, breed, age, gender, favorite_toy, owner = nil)
        @name = name
        @breed = breed
        @age = age
        @gender = gender
        @favorite_toy = favorite_toy
        @owner = owner
    end

    def prettify_gender(gender)
        if gender == "m"
            "he"
        elsif gender == "f"
            "she"
        else
            "(s)he"
        end
    end
end
