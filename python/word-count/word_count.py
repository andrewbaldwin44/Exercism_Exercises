import re

def count_words(sentence):
    sentence = re.findall(r"\b[\w']+\b", sentence.lower())

    return {word: sentence.count(word)
            for (index, word) in enumerate(sentence)
            if index == sentence.index(word)}
