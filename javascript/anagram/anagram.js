export const findAnagrams = (word, anagrams) => {
  word = word.toLowerCase();
  let sorted_word = [...word].sort().join();

  return anagrams.filter(anagram => {
    anagram = anagram.toLowerCase();
    return sorted_word == [...anagram].sort().join() && anagram != word;
  });
}
