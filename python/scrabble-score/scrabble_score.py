TILES = {
    1: ['A', 'E', 'I', 'L', 'N', 'O', 'R', 'S', 'T', 'U'],
    2: ['D', 'G'],
    3: ['B', 'C', 'M', 'P'],
    4: ['F', 'H', 'V', 'W', 'Y'],
    5: ['K'],
    8: ['J', 'X'],
    10: ['Q', 'Z']
}

SCORE_PER_LETTER = {letter: value for value, letters in TILES.items() for letter in letters}

def score(word):
    return sum([SCORE_PER_LETTER[letter] for letter in word.upper()])
