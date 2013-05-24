def customer_interface
  quit=nil
  while quit !='n'
    puts "Which client has come into the shelter?"
    list_clients
    current_customer = gets.chomp  #This may need #'s to select from?
    validate_customer(current_customer)  #checks to see that selected customer in is in the list
    puts "what does #{shelter_1.clients[current_customer-1].name} want to do today?"
    puts "(A)dopt a pet?"
    puts "(G)ive up a pet?"
    puts "(V)isit with the animals at the shelter?"
    puts "(L)ist HappiTrails other clients?"
    action = gets.chomp
    action = action_validator(action)
    case action
    when 'G'
      custom_gives_up_pet(shelter_1.clients[current_customer+1])
    when 'A'
      customer_adopts_pet(shelter_1.clients[current_customer+1])
    when 'V'
      shelter_1.list_animals
    when 'L'
      shelter_1.list_clients
    end
    puts "Are there any more customers to take care of today?  (Y)es, (N)o"
    quit =gets.chomp.downcase!
  end
end

def validate_customer(current_customer)
  while current_customer > shelter_1.clients.length
    puts "Please selecr a valid customer #"
    current_customer = gets.chomp.to_i
  end
end

def custom_gives_up_pet(client)
  puts "Which pet are you giving up #{client name}"#fix client name
  (current_customer).list_pets#this needs to be fixed so that (current_custom)
  #client object.  aslo client class need function, list_pets
  #with #'s?
  pet_index = gets.chomp,to_i
  validat_pet_index(pet_index, current_customer_as_object)#fix customer object, same as above
  current_customer_as_object.give_animal(shelter_1, animal_as_objeect)
end

def customer_adopts_pet(client)
  puts "Which pet would you like to adopt?"#fix client name
  shelter_1.animals.length.times { |x| puts "(#{x+1}) #{shelter_1.animals[x].name}"} #I think this works needs testing
  which_animal = gets.chomp.to_i
  which_animal = validate_animal_choice(which_animal)
  cLIENT_OBJECT.adopt_animal(shelter_1, shelter_1.animals[which_animal])#fix client object
end

def list_clients
  shelter_1.list_clients
end

def action_validator(action)
  while !(action =='A' || action =='G' || action =='V' || action =='L')
    action.upcase!
    puts "Please enter (A)dopt, (G)ive, (V)isit, or (L)ist"
    action = gets.chomp
  end
  action
end

def validate_animal_choice(which_animal)
  while which_animal> shelter_1.animanls.length
    puts "Please enter a valid pet #"
    which_animal = gets.to_i
  end
end
