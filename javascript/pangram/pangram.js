const alphabet = "abcdefghijklmnopqrstuvwxyz".split("");

export const isPangram = string => alphabet.every(letter => string.toLowerCase().includes(letter));

isPangram("abcdefghijklmnopqrstuvwxyz");

//~0.230s
