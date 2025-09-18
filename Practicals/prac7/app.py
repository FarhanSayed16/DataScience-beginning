import itertools
import random
 
suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack','Queen', 'King', 'Ace']  
deck = list(itertools.product(ranks, suits))
 
print("Original Deck:")
print(deck)
 
random.shuffle(deck)
print("\nShuffled Deck:")
print(deck)
