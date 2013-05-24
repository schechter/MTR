require_relative 'happiTrails_shelter'
require_relative 'happiTrails_client'
require_relative 'happiTrails_animals'

shelter_1 = Shelter.new([],[])

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
def client_builder  #ths will return an array of client items
	puts "How many clients does the Happi Trails have?"
	number_of_clients=gets.chomp.to_i
	clients=[]
	number_of_clients.times {|x| clients.push(client_generator(x))}
	clients
end


def client_generator(x)	
		puts "What is client ##{x}'s name?"
		name=gets.chomp
		puts "What is client ##{x}'s age?"
		age = gets.chomp
		puts "What is client ##{x}'s gender?"
		gender = gets.chomp
		gender = gender_validator(gender)
		puts "Does client ##{x} have any kids? (y) or (n)"
		kids = gets.chomp
		kids = kids_validator?(kids)
		puts "How many pets does client ##{x} have?"
		num_pets = gets.chomp.to_i
		pets = []
		num_pets.times {|x| pets.push(pets_generator(x))}
		Client.new(name, age, gender, kids, pets)
	end
end

def pet_generator(pet_number)
    name breed age gender favorite toy owner
    puts "What is pet #{pet_number}'s name?"
    name = gets.chomp
    puts "What is pet #{pet_number}'s breed?"
    breed = gets.chomp
    puts "What is pet #{pet_number}'s age?"
    age = gets.chomp
    puts "What is pet #{pet_number}'s gender?"
    gender = gets.chomp
    puts "What is pet #{pet_number}'s favorite toy?"
    favorite_toy = gets.chomp
    Animal.new(name, breed, age, gender, favorite_toy)
end


    



 

def gender_validator(gender)
	#TODO
end
def kids_validator?(kids)
	#TODO
end
def pet_generator(x) #this will return an array of pets
	#TODO
end
