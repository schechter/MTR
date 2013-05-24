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
    unless @pets.include? animal
      puts "This animal does not belong to the client."
    else
      shelter.add_animal(animal)
      self.drop_pet(animal)
      puts "Thank you for giving #{animal.name.capitalize} a shelter!"
    end
  end

  def adopt_animal(shelter, animal)
    unless shelter.animals.include? animal
      p "That animal is not in the shelter right now"
    else
      shelter.drop_animal(animal)
      self.add_pet(animal)
      p "Congratulations! You've adopted #{animal.to_s}"
    end
  end

  def add_pet(animal)
    @pets.push(animal)
  end

  def drop_pet(animal)
    if !@pets.include? animal
      puts "This animal does not belong to the client."
      return
    end
    @pets.delete(animal)
  end

    def list_pets_options
        i = 1
        @pets.each do |pet|
            puts "(#{i} #{pet.name})"
            i += 1
        end
    end

  def to_s
    @name
  end

end
