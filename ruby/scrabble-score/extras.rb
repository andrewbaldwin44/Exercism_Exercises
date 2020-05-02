def multiply_letters(multiplier)
  multiplier.times do
    multiplied_letters.map { |letter| self.letters << letter.upcase}
  end
  self
end

def double_letters(letters)
  @multiplied_letters = letters
  multiplyLetters(2)
end

def triple_letters(letters)
  @multiplied_letters = letters
  multiplyLetters(3)
end

def double_word()
  self.letters += self.letters
  self
end

def triple_word()
  self.letters += self.letters * 2
  self
end
