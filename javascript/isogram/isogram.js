export const isIsogram = word => {
  word = word.toLowerCase().replace(/[^a-z]/, '');
  return Array.from(new Set(word)).join('') == word
};
