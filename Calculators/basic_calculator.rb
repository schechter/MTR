class BasicCalculator
def basic_calculator
  while true
    print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide, (b)ack to Calc: "
    funct = gets.chomp.downcase
    validate_options(['a','s','m','d','q'],funct)
    if funct == 'q'
      break
    end
    f_num, s_num = getnum
    case funct
    when 'a'
      ans = f_num + s_num
    when 's'
      ans = f_num - s_num
    when 'm'
      ans =f_num * s_num
    when 'd'
      ans = f_num / s_num
    end
    puts "Your answer is #{ans}"
    break
  end
  puts "Basic calculator quits, back to clacualtor choice with you!"
end

basic_calculator
end