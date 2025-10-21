# Create an array named "config" and add 10 key-value pairs at once
array set config {
    username       admin
    password       1234
    server         localhost
    port           8080
    timeout        30
    theme          dark
    maxUsers       100
    language       English
    enableLogs     true
    version        1.0
}

# Print a single value using its key
puts "Username is: $config(username)"
puts "Server address is: $config(server)"

# Print all key-value pairs in the array
parray config

# Change or update a value
set config(theme) "light"     ;# Update the theme to light

# Print the updated value
puts "Updated theme is: $config(theme)"

# Show all keys in the array
puts "All keys in the array:"
puts [array names config]

# Delete one key from the array
unset config(enableLogs)      ;# Remove key 'enableLogs' from array

# Print array after deleting a key
puts "Array after deleting enableLogs:"
parray config

# Delete the entire array if needed
# unset config                ;# Uncomment this line to remove the whole array
