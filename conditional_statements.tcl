#syntax to write if conditional statements and taking input from user
#program to find a number is even or not
# 1.EXAMPLE
set number [gets stdin]
#it will load number from console
if {$number%2} {
puts "$number is even number"
} else {
puts "$number is odd number"
}

# 2.EXAMPLE
#else if example
set a [gets stdin]
set b [gets stdin]
set c [gets stdin]
if {$a>$b} {
if {$a>$c} {
puts "$a is greatest number of three $a $b $c "
}
} else {
if {$b > $c} {
puts "$b is greatest"
} else {
puts "$c is greatest"
}
}
puts "found the greatest number"


#3.EXAMPLE
set grade [gets stdin]
if {$grade> 80 && $grade < 90} {
puts "passed in distinction"
} elseif {$grade <70 && $grade >60} {
puts "passed in 1st class"
} elseif {$grade <50} {
puts "failed"
} else {
puts "just passed"
}
