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

  def add_client(client)
    @clients.push(client)
  end

  def list_animals
    @animals.each { |a| p a.name}
  end

  def list_animals_options
        i = 1
        :animals.each do |animal|
            puts "(#{i} #{animal.name})"
            i += 1
        end
    end

  def list_clients_options
      i = 1
      :clients.each do |animal|
        puts "(#{i} #{animal.name})"
        i += 1
    end
  end



  def list_clients
    @clients.each {|c| p c.name}
  end

end
