#list example and instantiation 

set animals [list "dog" "cat" "mouse"]
puts $animals

#other ways to make a list 

set animals_2 {zebra monkey lion}
puts $animals_2

# numerical list 
set numbers [list 1 2 3 4 5 6]
puts $numbers

#accessing the list index
puts [lindex $animals 2]

#creating the list with the split command
#in the below example the delimiter is the single space- " "
set data {India Nepal Singapore Vietnam Australia America}
set countries [split $data " "]
puts $countries


#adding elements to the list 
lappend animals {horse}
puts $animals

lappend data {Israel}
puts $data

#to find the length of the list - llength is the function
puts [llength $animals]

#inserting an element in the middle of the list use -> linsert <list> <index_to_inserted> {elements to be inserted}
# Note - To actually modify the list we must use it in chain with the set command
linsert $animals 2 {rabbit cow}
puts $animals

set animals [linsert $animals 2 rabbit cow]
puts $animals
#verification step.
puts [lindex $animals 3]


#modifying the list - replacing the existing data/ overwriting them
#1 Adding single element at a index 

#lset directly replaces the value in the index 4 in list - animals
lset animals 4 bear
puts $animals

#multiple index replacements
puts "Old animals list value :  $animals "
#replacing the older values at index 0 and 1, with new values
set animals [lreplace $animals 0 1 lion tiger]
puts "New animals list value :  $animals "

#extracting a range of indexes with - lrange function
lrange $animals 2 4
puts [lrange $animals 2 4]

#Sorting of a List 
puts "Before sorting : $animals"
puts [lsort $animals]
puts "Afer invoking the lsort function but not setting it : $animals"
set animals [lsort $animals]
puts "After using set command with lsort : $animals"

#iterating over the lists using - foreach - (Control Loops)

foreach animal $animals {
	puts "Animal : $animal"
}



