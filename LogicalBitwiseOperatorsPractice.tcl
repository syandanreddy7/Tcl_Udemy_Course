
# sensor state 
# 0 -> Normal 
# 1 -> Error


# set status 17

# if {($status >= 1) && ($status <= 15)} {
# 	puts "Cooling System Alarm"
# } elseif {$status == 0} {
# 	puts "Cooling System OK"
# } else {
# 	puts "Invalid State"
# }

##alternative case where the cooling system where the 2 more significant bits are critical sensors
#my solution 
# set status 10

# if {($status >= 4)} {
# 	puts "Cooling System ERROR"
# } elseif {($status < 4) && ($status >= 1) } {
# 	puts "Cooling System Alarm"
# } else {
# 	puts "Cooling System OK"
# }

#optimal solution using the bitwise operators only 

#part - 1
#the below code checks if any bit is set then the alarm rings 
set status 3

puts [expr { ($status & 15) ? "Cooling System Alarm" : "Cooling System OKAY" }]

#part - 2
#this below code is speific for two critical bits 

puts [expr {((($status & 8) >> 3) | (($status & 4) >> 2 )) ? "Cooling System ERROR" : "Critical Process OKAY" }]
 











