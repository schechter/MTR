Students=%w[Third_wheel Mike_s Lee Tanay Isabel Ryan Alex Andrew Bernard Cris Dave_S Dave_A Djohny Fransisco Frank George Jamie Jimmy Lane Mike_F Mike_R Remmy Suyala Thiago Tricia]
def pair_classmates(students)
	students = students.shuffle
	while students.length >= 2
		if students.length == 3 
			last_student_pair = students.pop(3)	
			puts "Student Pair is #{last_student_pair[0]},  #{last_student_pair[1]}  and #{last_student_pair[2]}"
		else	
			student_pair = students.pop(2)
			puts "Student Pair is #{student_pair[0]} and  #{student_pair[1]}"
		end
end
end
puts pair_classmates(Students)
