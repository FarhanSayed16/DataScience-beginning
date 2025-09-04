# String Concatenation Examples in Python

# Example 1: Using the + operator
str1 = "Hello"
str2 = "World"
result = str1 + " " + str2  # Adds a space between the words
print(result)  # Output: Hello World

# Example 2: Using the += operator
greeting = "Good"
greeting += " Morning"
print(greeting)  # Output: Good Morning

# Example 3: Concatenating multiple strings
first = "Data"
second = "Science"
third = "Rocks"
combined = first + " " + second + " " + third
print(combined)  # Output: Data Science Rocks

# Example 4: Using join() method for a list of strings
words = ["Python", "is", "fun"]
sentence = " ".join(words)
print(sentence)  # Output: Python is fun

# Example 5: Concatenating strings and numbers (convert number to string)
name = "Alice"
age = 25
info = name + " is " + str(age) + " years old."
print(info)  # Output: Alice is 25 years old.

# Example 6: Using f-strings (Python 3.6+)
city = "London"
country = "UK"
location = f"{city}, {country}"
print(location)  # Output: London, UK