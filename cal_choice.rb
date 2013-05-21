def calc_selector
  while true
    print "Choose calculator type: (b)asic, (a)dvanced, or (q)uit "
    calc_type = gets.chomp.downcase
    if calc_type == 'q'
      break
    end
    if calc_type == 'b'
      calculator
    elsif cal_type == 'a'
      advanced_cal
    else "Please enter a valid function"
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


def calculator
  while true
    print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide, (b)ack to Calc: "
    funct = gets.chomp.downcase
    if funct == 'q'
      break
    end
    unless ['a','s','d','m'].include? funct
      puts "Please enter a valid option"
      next
    end
    f_num, s_num = getnum
    if funct == 'a'
      ans = f_num + s_num
    elsif funct == 's'
      ans = f_num - s_num
    elsif funct == 'm'
      ans =f_num * s_num
    elsif funct == 'd'
      ans = f_num / s_num
    end
    puts "Your answer is #{ans}"
    break
  end
  puts "Basic calculator quits, back to clacualtor choice with you!"
end

def advanced_cal
  while true
    print "(p)ower, (s)qrt-2nd number root of the 1st number, (b)ack to Calc_selector: "
    funct = gets.chomp.downcase
    if funct == 'q'
      break
    end
    unless ['p', 's'].include? funct
      puts "Please enter a valid option"
      next
    end
    f_num, s_num = getnum
    if funct == 'p'
      ans = f_num ** s_num
    else ans = f_num ** (1/f_num)
    end
    puts "Your answer is #{ans}"
    break
  end
  puts "Basic calculator quits, back to clacualtor choice with you!"
end
calc_selector
