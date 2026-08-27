set grades {80 95 70 85 90 92 88 75 82 78}

#total number of students
set no_of_students [llength $grades]
puts "The number of students are : $no_of_students"

#average grade calculation 
#Note : here we have used integer division so, for the right value it is required to typecast one of 
#the variable into the double data type
set average 0.0
foreach number $grades {
	set average [expr {$average + (double($number)/ $no_of_students)}]
}
puts "The average grade is : $average"

#to find the highest and lowest grade

set highest_grade [lindex $grades 0]
set lowest_grade [lindex $grades 0]
foreach number $grades {
	set highest_grade [expr {($highest_grade < $number) ? $number : $highest_grade}]
	set lowest_grade [expr {($lowest_grade > $number) ? $number : $lowest_grade}]
}
puts "The highest_grade is : $highest_grade and lowest_grade is : $lowest_grade"

#creating a new list called "passed" to keep only the people with 80 or above grades 
set passed [list]
# puts passed
foreach number $grades {
	if {$number >= 80} {
		set passed [lappend passed $number]
	}
}
# puts $passed


#printing the number of students who have passed 
puts "The number of students who passed : [llength $passed]"

