class Pangram
  ALPHABET = ("a".."z").to_a
  def self.pangram?(sentence)
    ALPHABET.each { |letter|
      unless sentence.downcase.include? letter
        return false
      end
    }
    return true
  end
end
