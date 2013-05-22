Students=%w[Third_wheel Mike_s Lee Tanay Isabel Ryan Alex Andrew Bernard Cris Dave_S Dave_A Djohny Fransisco Frank George Jamie Jimmy Lane Mike_F Mike_R Remmy Suyala Thiago Tricia]

def pair_classmates(students)
  print "What size groups do you want your students broken up into? "
  group_size = gets.chomp.to_i
  n = 1
  students.shuffle!
  while students.length >= group_size
    if students.length == group_size + 1
      print_student_pairs(students, n)
      break
    else
      student_pair = students.pop(group_size)
      print_student_pairs(student_pair, n)
    end
    n += 1
  end
end

def print_student_pairs(students, n)
  print "Student pair #{n} "
  students.each_index do |x|
    if students.length == x + 1
      print "and #{students[x]}."
    else
      print "#{students[x]}, "

    end
  end

  puts
end

pair_classmates(Students)
