export const countWords = words => {
  words = words.toLowerCase().match(/\b[\w']+\b/g)

  return words.reduce((word_count, word) => {
    word_count[word] ? word_count[word]++ : word_count[word] = 1
    return word_count
  }, {});
};
