Students=%w[Third_wheel Mike_s Lee Tanay Isabel Ryan Alex Andrew Bernard Cris Dave_S Dave_A Djohny Fransisco Frank George Jamie Jimmy Lane Mike_F Mike_R Remmy Suyala Thiago Tricia]
def pair_classmates(students)
	n = 1
	students = students.shuffle
	while students.length >= 2
		if students.length == 3 	
			puts "Student Pair #{n} is #{students[0]}, #{students[1]}, and #{students[2]}"
			break
		else	
			student_pair = students.pop(2)
			puts "Student Pair #{n} is #{student_pair[0]}, and #{student_pair[1]}"
		end
		n += 1
end
end
pair_classmates(Students)
