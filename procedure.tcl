# program to search a file
set tclfiles [glob *.tcl]
foreach filename $tclfiles {
puts "file=$filename"
}
#set color {red green yellow}
#set foods {kushka aloo biryani}
#set status "ok ad hi"
#foreach {a b c} $status {
#puts "$c--$b--$a"
#}
# program generalised to use switch and for loops
#puts "enter a value of number"
#set number [gets stdin]
set number 0
#puts "$number"
for {set i $number} {$i<4} {incr i} {
switch $i {
0 {puts "\n hi" }
1 { puts "where you are from" }
2 { puts "would you like to have a coffee" }
3 { puts "so,how is the office vibe" }
default { puts "bye" }
}
}
#procedure just like functions in sv
proc add {a b} {
return [expr $a+$b]
}
set sum [ add 5 94]
puts "\n$sum"
proc seperate {} {
puts "\ndone"
}
seperate;

# upvar to use as pass by ref value
proc setpositive {hi value} {
upvar $hi local
if {$value<0} {
set local [expr {-$value}]
} else {
set local $value
}
}

setpositive x -9
setpositive y -90
puts "\nsign of$x and sign of $y"
# my example for upvar
proc unsetting {var val} {
upvar $var local
unset local
}
unsetting x 7
if {[info exists x]} {
  puts "\n undhi"
} else {
     puts "\n ledhu"
}
#adding 2
proc add2 name {
upvar $name x
set x [expr {$x+2}]
}
set h 6
add2 h
puts "\n $h"



#decrement proc written to function like incr reverse
proc decr {varname {decrement 1}} {
upvar 1 $varname var
incr var [expr {-$decrement}]
}
set number 10
while {$number>5} {
puts "\n $number"
decr number
}





set number 10
incr number [expr {-1}]
puts "$number"
