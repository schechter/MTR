def customer_interface)
  quit=nil
  while quit !='n'
    puts "Which client has come into the shelter?"
    list_clients
    current_customer = gets.chomp
    puts "what does #{TODO_THIS_WILL_BE_CURRENT_CUSTOMERs_NAME} want to do today?"
    puts "(A)dopt a pet?"
    puts "(G)ive up a pet?"
    puts "(V)isit with the animals at the shelter?"
    puts "(L)ist HappiTrails other clients?"
    action = gets.chomp
    action = action_validator(action)
    case action
    when 'G'
      custom_gives_up_pet
    when 'A'
      customer_adopts_pet
    when 'v'
      shelter_1.list_animals
    when 'l'
      shelter_1.list_clients
    end
    puts "Are there any more customers to take care of today?  (Y)es, (N)o"
    quit =gets.chomp.downcase!
  end

  def custom_gives_up_pet(customer)
    while true
        puts "Which pet are you giving up #{client name}"#fix client name
        customer.list_pets
        pet_index = gets.chomp.to_i - 1
        pet = customer.pets[pet_index]
        next if pet_index < 0 || pet_index > customer.pets.length - 1 # Index out of bounds
        customer.give_animal(shelter_1, animal)
        break
    end
  end

  def customer_adopts_pet(customer)
    while true 
        puts "Which pet would you like to adopt?"#fix client name
        shelter_1.
        which_animal = gets.chomp.to_i
        which_animal = validate_animal_choice(which_animal)
        cLIENT_OBJECT.adopt_animal(shelter_1, shelter_1.animals[which_animal])#fix client object
  end
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

  def validate_animal_choice(which_animal)#TODO
    while which_animal> shelter_1.animanls.length
      puts "Please enter a valid pet #"
      which_animal = gets.to_i
    while 'something'=='else' #stuff here for animal choice validation
    end
  end
