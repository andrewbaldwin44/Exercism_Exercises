const alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
export const isPangram = string => {
    const normalizedString = string.toLowerCase();
    return alphabet.every(letter => normalizedString.includes(letter));
}

isPangram("abcdefghijklmnopqrstuvwxyz");
//~isPangram("abcdefghijklmnopqrstuvwxyz")0.230s
