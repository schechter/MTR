def client_builder  #ths will return an array of client items
  puts "How many clients does the Happi Trails have?".color(:blue)
  number_of_clients=gets.chomp.to_i
  clients=[]
  number_of_clients.times {|x| clients.push(client_generator(x+1))}
  clients
end


def client_generator(x) #will Clients
  puts "What is client ##{x}'s name?".color(:blue)
  name=gets.chomp
  puts "What is client ##{x}'s age?".color(:blue)
  age = gets.chomp
  puts "What is client ##{x}'s gender?".color(:blue)
  gender = gets.chomp
  gender = gender_validator(gender)
  puts "Does client ##{x} have any kids? (y) or (n)".color(:blue)
  kids = gets.chomp
  kids = kids_validator?(kids)
  puts "How many pets does client ##{x} have?".color(:blue)
  num_pets = gets.chomp.to_i
  pets = []
  num_pets.times {|x| pets.push(pet_generator(x+1))}
  Client.new(name, age, gender, kids, pets)
end

def pet_generator(pet_number)
    puts "What is pet #{pet_number}'s name?".color(:cyan)
    name = gets.chomp
    puts "What is pet #{pet_number}'s breed?".color(:cyan)
    breed = gets.chomp
    puts "What is pet #{pet_number}'s age?".color(:cyan)
    age = gets.chomp
    puts "What is pet #{pet_number}'s gender?".color(:cyan)
    gender = gets.chomp
    gender_validator(gender)
    puts "What is pet #{pet_number}'s favorite toy?".color(:cyan)
    favorite_toy = gets.chomp
    Animal.new(name, breed, age, gender, favorite_toy)
end
