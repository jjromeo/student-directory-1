#first, we create an array containing the students on our course.

 def input_students
 	print "Please enter the names of the students and some information\n"
 	print "To finish, just hit return twice\n"
 	#create an empty array
 	students = [] 
 	#get the first name
 	print "enter student name\n"
 	name = gets.chomp
 	#while the name is not empty
 	while !name.empty? do
 		#get the student's cohort
 		print "enter #{name}'s cohort\n"
 		cohort = gets.chomp
 		cohort = "August" if cohort.empty? 
 		#get the student's hobby
 		print "enter #{name}'s hobby\n"
 		hobby = gets.chomp
 		#get the student's country of birth
 		print "enter #{name}'s country of birth \n"
 		cob = gets.chomp
 		#get the student's date of birth
 		print "enter #{name}'s date of birth (dd/mm/yyyy) \n"
 		dob = gets.chomp
 		#add the student hash to the array
 		students << {:name => name, :cohort => cohort, :hobby => hobby, :cob => cob, :dob =>dob}
 		print "Now we have #{students.length} students\n"
 		#get another name from the user
 		print "enter student name\n"
 		name = gets.chomp
 	end
 #return the array of students
 students
end

def print_header
	print "The students of my cohort at Makers Academy\n"
	print "--------------\n"
end

def cohorts(student)
	student.map {|student| student[:cohort]}.uniq
end

def prints(student)
	cohorts(student).each do |cohort|
		print "#{cohort}\n"
			student.select {|x| x[:cohort] == cohort}.each do |student|
			print "#{student[:name]} (#{student[:cohort]} cohort.\nTheir hobby is #{student[:hobby]}. They were born on the #{student[:dob]} in #{student[:cob]})\n".center(50) 
		end
	end	
end

def print_footer(names)
	print "Overall, we have #{names.length} great students\n"
end
#nothing happens until we call the methods
students = input_students
print_header
prints(students)
cohorts(students)
print_footer(students)

#finally, we print the total

