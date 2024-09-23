#set dv_team { vamshi saikumar jagdeesh uttam jk sharan saikumari meghana navya sadguna divya sayali pooja }
#set dv_team [lsort -dictionary $dv_team]
#foreach team_individual $dv_team {
#puts "name_of_individual in team =$team_individual"
#}
#set team_list ""
#puts "what is the size of team"
#set size [gets stdin]
#for {set it 0} { $it<$size } {incr it} {
#	puts "enter name $it -->"
#	set name [gets stdin]
#	set team_list [linsert $team_list $it "$name"]
#}
#set team_list [lsort -dictionary $team_list]
#puts "team names are"
#foreach in $team_list {
#puts "$in"
#}




# program to form a list of your team mates
set team_list ""
puts "what is the size of team"
set size [gets stdin]
for {set it 0} { $it<$size } {incr it} {
        puts "$it)enter your name "
        #set name [gets stdin]
        set team_list [linsert $team_list $it [set name [gets stdin]]]
}
set team_list [lsort -dictionary $team_list]
puts "team names are"
foreach in $team_list {
puts "$in"
}

###############################################
#            program for 
#             arrays 
# ############################################
set clas(0) vlsi
set clas(1) embedded
set clas(2) micro_el
set clas(3) signals
for {set index 0} {$index <[array size clas]} {incr index} {
puts "clas($index) is : $clas($index)"
}
#######################################
#             program for
#           associative arrray
#            using foreach loop
#######################################
set class(bench) sai
set class(chair) anu
set class(table) jittu
# [array keyword names array name]
puts [array names class]
foreach index [array names class] {
puts "class($index) :$class($index)"
}


set length [gets stdin]
set array1($length) $length
puts "array1($length):$array1($length)"
for {set x 0} {$x<$length} {incr x} {
set array1($x) $x
#puts "array1($x):$array($x)"
}
puts [array names array1]
foreach i [array names array1] {
puts "array($i):$array1($i)"
}

##################################################################
#        program for subject list in
#           gate
#      input : enter number of subjects and names
#      outpus : gives the name of the subjects in dictionary order
##################################################################



set subject_list ""
puts "number of gate subjects in ece"
set num_of_sub [gets stdin]
for {set index 0} {$index <$num_of_sub} {incr index } {
set subject_list [linsert $subject_list $index [set name_of_subject [gets stdin]]]
}
set subject_list [lsort -dictionary $subject_list]
puts "subjects in alphabet order"
foreach in $subject_list {
puts "$in"
}




