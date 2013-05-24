def customer_interface(shelter)
  quit=nil
  while quit !='n'
    puts "Which client has come into the shelter?"
    shelter.list_clients_options
    current_customer = gets.chomp.to_i
    validate_customer(current_customer, shelter)  #checks to see that selected customer in is in the list
    puts "What does #{shelter.clients[current_customer-1].name} want to do today?"
    puts "(A)dopt a pet?"
    puts "(G)ive up a pet?"
    puts "(V)isit with the animals at the shelter?"
    puts "(L)ist HappiTrails other clients?"
    action = gets.chomp.upcase
    action = action_validator(action)
    case action
    when 'G'
      custom_gives_up_pet(shelter.clients[current_customer-1], shelter)
    when 'A'
      customer_adopts_pet(shelter.clients[current_customer-1], shelter)
    when 'V'
      shelter.list_animals
    when 'L'
      shelter.list_clients
    end
    puts "Are there any more customers to take care of today?  (Y)es, (N)o"
    quit = gets.chomp.downcase
  end
end


def validate_customer(current_customer, shelter)
  while current_customer > shelter.clients.length 
    puts "Please selecr a valid customer #"
    current_customer = gets.chomp.to_i
  end
end


def custom_gives_up_pet(customer, shelter)
  while true
    puts "Which pet are you giving up #{customer.name}"#fix client name
    customer.list_pets_options
    pet_index = gets.chomp.to_i - 1
    if pet_index < 0 || pet_index > customer.pets.length - 1 # Index out of bounds
      puts "Invalid animal choice."
      next
    end
    pet = customer.pets[pet_index]
    customer.give_animal(shelter, pet)
    break
  end
end

def customer_adopts_pet(customer, shelter)
  while true
    puts "Which pet would you like to adopt?"
    shelter.list_animals_options #TODO implement feature that lists numbers with names in shelter class. list_animals_with_numbers
    pet_index = gets.chomp.to_i - 1
    if pet_index < 0 || pet_index > shelter.animals.length - 1
      puts "Invalid animal choice"
      next
    end

    pet = shelter.animals[pet_index]
    customer.adopt_animal(shelter, pet)
    break
  end
end

def list_clients
  shelter.list_clients
end

def action_validator(action)
  while !(action =='A' || action =='G' || action =='V' || action =='L')
    puts "Please enter (A)dopt, (G)ive, (V)isit, or (L)ist"
    action = gets.chomp
    action.upcase!
  end
  action
end
