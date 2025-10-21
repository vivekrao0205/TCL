#procedures

# 1. A simple procedure with no arguments
proc sayHello {} {
    puts "Hello, this is a procedure"
}

# 2. Procedure with one argument
proc greet {name} {
    puts "Hello $name"
}

# 3. Procedure that adds two numbers
proc addNumbers {a b} {
    return [expr {$a + $b}]
}

# 4. Procedure that multiplies two numbers
proc multiply {x y} {
    return [expr {$x * $y}]
}

# 5. Procedure that checks if a number is even
proc isEven {num} {
    if {[expr {$num % 2 == 0}]} {
        return "Number is even"
    } else {
        return "Number is odd"
    }
}

# 6. Procedure with default argument
proc welcome {name {place "World"}} {
    puts "Welcome $name to $place"
}

# 7. Procedure to find the largest number
proc findMax {a b} {
    if {$a > $b} {
        return $a
    } else {
        return $b
    }
}

# 8. Procedure that prints all array values
proc printArray {arrayName} {
    upvar $arrayName arr         ;# Link local variable to original array
    parray arr
}

# 9. Procedure that returns length of a string
proc stringLength {text} {
    return [string length $text]
}

# 10. Procedure to calculate factorial of a number
proc factorial {n} {
    if {$n <= 1} {
        return 1
    } else {
        return [expr {$n * [factorial [expr {$n - 1}]]}]
    }
}

# Calling the procedures to show how they work

sayHello
greet "Vivek"
puts "Sum is: [addNumbers 5 7]"
puts "Product is: [multiply 4 6]"
puts [isEven 10]
welcome "John"
welcome "John" "Tcl World"
puts "Max number is: [findMax 20 15]"
puts "Length of string: [stringLength Hello]"

# Example array for printArray procedure
array set sample {
    a 10
    b 20
    c 30
}
printArray sample

puts "Factorial of 5 is: [factorial 5]"
