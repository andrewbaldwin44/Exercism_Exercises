class Isogram
  def self.isogram?(word)
    letters = word.downcase.scan(/[a-z]/)
    letters.uniq.length == letters.length
  end
end
