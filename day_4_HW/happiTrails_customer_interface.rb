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
        puts "Which pet are you giving up #{customer.name}"#fix client name
        customer.list_pets
        pet_index = gets.chomp.to_i - 1
        pet = customer.pets[pet_index]
        if pet_index < 0 || pet_index > customer.pets.length - 1 # Index out of bounds
            puts "Invalid animal choice."
            next
        end
        customer.give_animal(shelter_1, pet)
        break
    end
  end

  def customer_adopts_pet(customer)
    while true 
        puts "Which pet would you like to adopt?"
        shelter_1.list_animals #TODO implement feature that lists numbers with names in shelter class. list_animals_with_numbers
        animal_index = gets.chomp.to_i - 1
        if pet_index < 0 || pet_index > shelter_1.animals.length - 1
            puts "Invalid animal choice"
        end
        customer.adopt_animal(shelter_1, shelter_1.animals[animal_index])
        break
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
