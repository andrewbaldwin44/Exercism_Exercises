const ALPHABET_SIZE = 26
const ALPHABET_TEST = /[a-z]/g

export function isPangram(input) {
  const normalised = input.toLowerCase().replace(/[^a-z]/g, "");
  return new Set(normalised.match(ALPHABET_TEST)).size >= ALPHABET_SIZE;
}
isPangram("abcdefghijklmnopqrstuvwxyz");
