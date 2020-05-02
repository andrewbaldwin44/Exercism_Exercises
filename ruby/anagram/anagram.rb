class Anagram
  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.select { |e| e.downcase.chars.sort == @word.downcase.chars.sort && e.downcase != @word.downcase}
  end
end
