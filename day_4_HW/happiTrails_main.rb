require_relative 'happiTrails_shelter'
require_relative 'happiTrails_client'
require_relative 'happiTrails_animals'
require_relative 'happiTrails_customer_interface'
require_relative 'happiTrails_generators'
require 'rainbow'
require 'pry'

shelter_1 = Shelter.new
puts `clear`
shelters_customers= client_builder #builds the customer base
shelters_customers.each { |c| shelter_1.add_client(c)}  #adds clients to shelter
puts "How any animals are already in the shelter?".color(:red)
shelters_animals = []
num_pets = gets.chomp.to_i
num_pets.times {|x| shelters_animals.push(pet_generator(x+1))} #generates list of animals already in shelter
shelters_animals.each {|a| shelter_1.add_animal(a)} # add animals to shelter
customer_interface(shelter_1)  #runs shelters customer interface

=begin
client_1 = Client.new('Mike', '36', 'Male', false, [])
client_2 = Client.new('Lee', '26', 'Male', false, [])

pet_1 = Animal.new('Fluffy', 'Boxer', '3', 'f', 'bone')
pet_2 = Animal.new('Spot', 'Golden', '7', 'm', 'shoes')
pet_3 = Animal.new('Steve', 'house cat', '2', 'm', 'tin foil balls')
pet_4 = Animal.new('Fred', 'Rock', '3.2 billion', 'm', 'windows')

shelter_1.add_animal(pet_1)
shelter_1.add_animal(pet_2)
shelter_1.add_animal(pet_3)
shelter_1.add_animal(pet_4)

shelter_1.add_client(client_1)
shelter_1.add_client(client_2)

shelter_1.list_animals

client_1.adopt_animal(shelter_1, pet_1)
client_2.adopt_animal(shelter_1, pet_3)
shelter_1.list_animals
client_1.adopt_animal(shelter_1, pet_4)
client_2.adopt_animal(shelter_1,pet_2)
client_1.give_animal(shelter_1, pet_4)
shelter_1.list_animals
shelter_1.list_clients
=end