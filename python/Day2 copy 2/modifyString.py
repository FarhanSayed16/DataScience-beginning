a = "Hello, World!"

# Convert to uppercase
print(a.upper())  # Output: "HELLO, WORLD!"

# Convert to lowercase
print(a.lower())  # Output: "hello, world!"

# Remove leading and trailing whitespace (none in this case)
print(a.strip())  # Output: "Hello, World!"

# Replace "Hello" with "Hi"
print(a.replace("Hello", "Hi"))  # Output: "Hi, World!"

# Split the string at each comma
print(a.split(","))  # Output: ['Hello', ' World!']

# Capitalize the first character, rest lowercase
print(a.capitalize())  # Output: "Hello, world!"

# Capitalize the first letter of each word
print(a.title())  # Output: "Hello, World!"

# Swap case: lowercase becomes uppercase and vice versa
print(a.swapcase())  # Output: "hELLO, wORLD!"

# Check if string starts with "Hello"
print(a.startswith("Hello"))  # Output: True

# Check if the string ends with "!"
print(a.endswith("!"))  # Output: True

# Find the position of the substring "World"
print(a.find("World"))  # Output: 7 (index where "World" starts)

# Count occurrences of "l"
print(a.count("l"))  # Output: 3

# Check if all characters are alphabetic
print(a.isalpha())  # Output: False (because of comma, space, and exclamation mark)

# Check if all characters are digits
print(a.isdigit())  # Output: False

# Join a list of strings with a separator
b = ["apple", "banana", "cherry"]
print(", ".join(b))  # Output: "apple, banana, cherry"

# Pad string with zeros on the left to make it 20 characters long
print(a.zfill(20))  # Output: "0000Hello, World!"
