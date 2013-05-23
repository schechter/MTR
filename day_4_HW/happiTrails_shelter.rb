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
  def list_clients
    @clients.each {|c| p c.name}
  end
end
