# TCL List Examples

# 1. Create a list of characters
set characters {Eren Mikasa Levi}
puts $characters   ;# Prints: Eren Mikasa Levi

# 2. Access individual characters
puts [lindex $characters 0]   ;# First character: Eren
puts [lindex $characters 2]   ;# Third character: Levi

# 3. Add a new character
lappend characters Armin
puts $characters   ;# Now: Eren Mikasa Levi Armin

# 4. Find the position of a character
set index [lsearch $characters "Mikasa"]
if {$index >= 0} {
    puts "Mikasa is at position $index"
} else {
    puts "Mikasa is not in the list"
}

# 5. Count how many characters are in the list
puts "There are [llength $characters] characters in the team"

# 6. Join all characters into a single string
set str [join $characters ", "]
puts "Team members: $str"   ;# Prints: Team members: Eren, Mikasa, Levi, Armin

# 7. Convert a string into a list
set text "Hange Jean Sasha"
set newTeam [split $text]
puts $newTeam   ;# Prints: Hange Jean Sasha

# 8. Get a part of the list (like slicing)
puts [lrange $characters 1 3]   ;# Prints: Mikasa Levi Armin

# 9. Replace a character in the list
set characters [lreplace $characters 0 0 "Eren Yeager"]
puts $characters   ;# Prints: Eren Yeager Mikasa Levi Armin

# 10. Check if a character exists in the list
set index [lsearch $characters "Levi"]
if {$index >= 0} {
    puts "Levi is in the team at position $index"
} else {
    puts "Levi is not in the team"
}
