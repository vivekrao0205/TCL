# 1. For loop - print numbers from 1 to 5
for {set i 1} {$i <= 5} {incr i} {
    puts "Number: $i"
}

# 2. While loop - count down from 5 to 1
set x 5
while {$x >= 1} {
    puts "Countdown: $x"
    incr x -1          ;# decrease value of x
}

# 3. Foreach loop - loop through a list of names
set names {Alice Bob Charlie}
foreach name $names {
    puts "Name: $name"
}

# 4. Loop through array keys
array set marks {
    math 85
    science 90
    english 88
}
foreach key [array names marks] {
    puts "$key = $marks($key)"
}

# 5. Using break in a loop - stop loop when condition is met
for {set i 1} {$i <= 10} {incr i} {
    if {$i == 5} {
        break           ;# exit loop
    }
    puts "Value: $i"
}

# 6. Using continue - skip one loop cycle
for {set i 1} {$i <= 5} {incr i} {
    if {$i == 3} {
        continue        ;# skip printing when i = 3
    }
    puts "Number: $i"
}

# 7. Nested loops - loop inside another loop
for {set i 1} {$i <= 3} {incr i} {
    for {set j 1} {$j <= 2} {incr j} {
        puts "i = $i, j = $j"
    }
}

# 8. Using while loop to sum numbers
set sum 0
set num 1
while {$num <= 5} {
    set sum [expr {$sum + $num}]
    incr num
}
puts "Total sum from 1 to 5 is: $sum"

# 9. Foreach with key-value pairs
set data {name John age 25 city Delhi}
foreach {key value} $data {
    puts "$key : $value"
}

# 10. Infinite loop with manual break
set count 1
while {1} {                 ;# 1 means true, so loop runs forever
    puts "Loop cycle: $count"
    incr count
    if {$count > 3} {       ;# stop after 3 times
        break
    }
}

#few basic examples of loops
