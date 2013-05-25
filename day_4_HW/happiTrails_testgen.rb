def create_sample_objects(num_objects)
    names = generate_names

def generate_names(file_name, num_names)
    test_names = [] # array containing names for a test
    names = IO.readlines(file_name) # open file containing lines of names
    num_names.times do 
        rand_name = names.sample
        test_names.push(rand_name)
    end
    test_names
end

puts generate_names('male-names.txt', 20)
