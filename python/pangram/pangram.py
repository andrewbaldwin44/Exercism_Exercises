
def is_pangram(sentence):
    alphabet='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    for letter in alphabet:
        if letter not in sentence.upper():
            return False
    return True
