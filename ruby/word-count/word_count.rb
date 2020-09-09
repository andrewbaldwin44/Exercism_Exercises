class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1}
  end

  private
  attr_accessor :sentence
  MATCH_WORDS = /\b[\w']+\b/

  def words
    sentence.downcase.scan(MATCH_WORDS)
  end
end
