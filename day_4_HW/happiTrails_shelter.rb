class Shelter
    
    attr_accessor :clients, :animals

    def add_client
    end

    def add_animal
    end

    def drop_animal
    end

    def initialize(clients = [], animals = [])
        @clients = clients 
        @animals = animals
    end
end
