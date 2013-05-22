class AdvancedCalculator
def advanced_cal
  while true
    print "(p)ower, (s)qrt-2nd number root of the 1st number, (b)ack to Calc_selector: "
    funct = gets.chomp.downcase
    validate_options(['p','s', 'q'], funct)
    if funct == 'q'
      break
    end
    if funct == 'p'
      f_num, s_num = getnum
      ans = f_num ** s_num
    elsif funct == 's'
      print "What number do you want the square root of? "
      f_num = gets.chomp.to_f
      ans = f_num ** (1/2)
    end
    puts "Your answer is #{ans}"
    break
  end
  puts "Basic calculator quits, back to clacualtor choice with you!"
end
end