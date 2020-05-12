def find_anagrams(word, candidates):
    letters = sorted(list(word.lower()))
    return [candidate for candidate in candidates
            if sorted(candidate.lower()) == letters and candidate.lower() != word.lower()]
