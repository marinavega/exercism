import re
import string

def is_pangram(sentence):
    if not sentence:
        return False
    else:
        alphabet = tuple(string.ascii_lowercase)
        return False not in [letter in sentence.lower() for letter in alphabet] 
    return True
