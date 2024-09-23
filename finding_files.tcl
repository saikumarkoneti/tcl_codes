set a 90
unset a
if {![info exists a]} {
	puts "ledhu"
} else {
	puts "undhi"
}
set listofnets [getallnets "some_pattern"]
set color "red dark yelow green blue purple"
foreach col $color {
	puts $col
}

#Program to find extension
set filename [glob *tcl]
foreach names $filename {
puts "filename=$names"
}
