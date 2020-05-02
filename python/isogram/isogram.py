def is_isogram(string):
    unique_letters = set()
    add_ = unique_letters.add
    for letter in string.lower():
        if letter.isalpha() and (letter in unique_letters or add_(letter)):
            return False
    return True
