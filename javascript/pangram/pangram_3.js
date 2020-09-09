const alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
export const isPangram = string => {
    const normalizedString = string.toLowerCase().replace(/[^a-z]/g, "");
    return alphabet.every(letter => normalizedString.includes(letter));
}
isPangram("abcdefghijklmnopqrstuvwxyz");
