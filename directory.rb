#first, we create an array containing the students on our course.

 def input_students
 	print "Please enter the names of the students\n"
 	print "To finish, just hit return twice\n"
 	#create an empty array
 	students = [] 
 	#get the first name
 	name = gets.chomp
 	#while the name is not empty
 	while !name.empty? do
 		#add the student hash to the array
 		students << {:name => name, :cohort => :november}
 		print "Now we have #{students.length} students\n"
 		#get another name from the user
 		name = gets.chomp
 	end
 #return the array of students
 students
end

def print_header
	print "The students of my cohort at Makers Academy\n"
	print "--------------\n"
end

def prints(students)
	i = 0
	while i < students.length
		print "#{students[i][:name]} (#{students[i][:cohort]} cohort)\n" 
	i += 1
	end
end

def print_footer(names)
	print "Overall, we have #{names.length} great students\n"
end
#nothing happens until we call the methods
students = input_students
print_header
prints(students)
print_footer(students)

#finally, we print the total

