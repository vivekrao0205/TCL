# TCL String Examples

# 1. Print a simple word
puts "Hello TCL"

# 2. Store a word in a variable and print it
set name "Vivek"
puts $name

# 3. Combine two words using variables
set first "Hello"
set second "World"
puts "$first $second"   ;# Prints "Hello World"

# 4. Add a number inside a string
set age 20
puts "I am $age years old"

# 5. Convert letters to uppercase
set word "tcl"
puts [string toupper $word]   ;# Prints "TCL"

# 6. Convert letters to lowercase
set word "TCL"
puts [string tolower $word]   ;# Prints "tcl"

# 7. Remove extra spaces from start and end
set text "  Hello TCL  "
puts [string trim $text]   ;# Prints "Hello TCL"

# 8. Get the first letter of a word
set word "TCL"
puts [string index $word 0]   ;# Prints "T"

# 9. Get the last letter of a word
puts [string index $word end]   ;# Prints "L"

# 10. Extract part of a word (substring)
set word "TCL Beginner"
puts [string range $word 0 2]   ;# Prints "TCL"
puts [string range $word 4 11]  ;# Prints "Beginner"

# 11. Split a sentence into individual words
set sentence "TCL is fun"
set words [split $sentence] 
puts $words

# Steps to run 
# 1 -> open terminal
# 2 -> type : tclsh filename.tcl
