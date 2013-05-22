require_relative 'advanced_calculator'
require_relative 'basic_calculator'


def calculator
  while true
    print "Choose calculator type: (b)asic, (a)dvanced, or (q)uit "
    calc_type = gets.chomp.downcase
    if calc_type == 'q'
      break
    end
    if calc_type == 'b'
      BasicCalculator.new.basic_calculator
    elsif calc_type == 'a'
      AdvancedCalculator.new.advanced_cal
    else
      "Please enter a valid function"
    end
  end
end

def getnum
  print  "first number: "
  f_num = gets.chomp.to_f
  print  "second number "
  s_num = gets.chomp.to_f
  return f_num, s_num
end

def validate_options(options, responce)
  while !options.include? responce
    puts "Please enter a valid option"
    responce = gets.chome
  end
end

calculator
