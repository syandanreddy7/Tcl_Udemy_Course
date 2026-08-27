set str "Make: Toyota Model: Land Cruiser Year: 1998"

#use TCL to extract the make model and year into individual variables

#extracting the make first
set make_start [string first "Toyota" $str]
# puts $make_start	
set make_end [expr $make_start + [string length "Toyota"]]
# puts $make_end

puts "The  Make is : [string range $str $make_start $make_end]"
# extracting the model

set model_start [string first "Land Cruiser" $str]
# puts $model_start	
set model_end [expr $model_start + [string length "Land Cruiser"]]
# puts $model_end

puts "The  Model is : [string range $str $model_start $model_end]"

#extracting the year
set year_start [string first "1998" $str]
# puts $year_start	
set year_end [expr $year_start + [string length "1998"]]
# puts $year_end

puts "The  Year is : [string range $str $year_start $year_end]"