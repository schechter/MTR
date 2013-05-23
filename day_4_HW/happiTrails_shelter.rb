class Shelter
    
    attr_accessor :clients, :animals

    def add_animal(animal)
        @animals.push(animal)
    end

    def drop_animal(animal)
        @animals.delete(animal) 
    end

    def initialize(clients = [], animals = [])
        @clients = clients 
        @animals = animals
    end
end
