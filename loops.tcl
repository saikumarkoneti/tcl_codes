# 1 example 1 for expression evaluation
set a 5
set b 70
puts "adding the two numbers [expr $a+$b]"
puts "subtractionthe two numbers [expr $a-$b]"
set a [set b 10]
puts $a

# to find even number or odd
for {set number 10 } {$number <100} {incr number} {
set b [set number_1 $number]
if { $b%2 ==0} {
	puts "value of $b even"
} else {
	puts "value of $b is odd"
}
puts "value of b=$b"
}

# prime number program 
set counter 0
puts "enter the lenght"
set length [gets stdin]
for {set number 2} {$number <$length} {incr number} {
         set count 0
for {set number_1 1} {$number_1 <=$number} {incr number_1} {
 if { $number % $number_1==0} {
	 incr count
  }
  }
if {$count == 2} {
     puts "prime numbers are $number"
     incr counter
 }
 }
puts "number of prime numbers $counter"
 

# efficient way to write prime number program
set counter 0
puts "enter the range"
set range [gets stdin]
for {set index 1} {$index < $range} {incr index} {
	set count 0
if {$index%2==0} {
set num [expr $index/2]
} else {
set num [expr $index-1]
set num [expr $num/2 ]
#puts "$num"
}
for {set in 1} {$in<=$num} {incr in} {
if {$index %$in==0 } {
incr count
}
}
if {$count==1} {
puts "prime numbers are $index"
incr counter
}
}
puts "number of prime numbers $counter"






