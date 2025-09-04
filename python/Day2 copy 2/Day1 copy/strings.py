# Python Strings: Basics, Slicing, Modifying, Concatenation

# 1. Creating a string
text = "Hello, Python!"

# 2. Slicing strings
# Syntax: string[start:end] (end is not included)
slice1 = text[0:5]    # 'Hello'
slice2 = text[7:]     # 'Python!'
slice3 = text[-7:-1]  # 'Python'

print("Original:", text)
print("Slice 1 (0:5):", slice1)
print("Slice 2 (7:):", slice2)
print("Slice 3 (-7:-1):", slice3)

# 3. Modifying strings
# Strings are immutable, so you create a new string
upper_text = text.upper()         # 'HELLO, PYTHON!'
lower_text = text.lower()         # 'hello, python!'
replaced_text = text.replace("Python", "World")  # 'Hello, World!'

print("Uppercase:", upper_text)
print("Lowercase:", lower_text)
print("Replaced:", replaced_text)

# 4. Concatenation (joining strings)
greeting = "Hello"
name = "Alice"
combined = greeting + ", " + name + "!"  # 'Hello, Alice!'

print("Concatenated:", combined)

# 5. Using 'and' and 'e' (in English and other languages)
# 'and' is used to join strings with 'and'
joined_with_and = greeting + " and " + name  # 'Hello and Alice'
# 'e' is 'and' in Portuguese/Italian, for example
joined_with_e = greeting + " e " + name      # 'Hello e Alice'

print("Joined with 'and':", joined_with_and)
print("Joined with 'e':", joined_with_e)

# Explanation:
# - Slicing extracts parts of a string using indices.
# - Modifying creates new strings (original is unchanged).
# - Concatenation joins strings using '+'.
# - You can join with any word, like 'and' or 'e', as needed.