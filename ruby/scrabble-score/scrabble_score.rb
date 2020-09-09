class Scrabble
  TILES = {
    A: 1,  N: 1,
    B: 3,  O: 1,
    C: 3,  P: 3,
    D: 2,  Q: 10,
    E: 1,  R: 1,
    F: 4,  S: 1,
    G: 2,  T: 1,
    H: 4,  U: 1,
    I: 1,  V: 4,
    J: 8,  W: 4,
    K: 5,  X: 8,
    L: 1,  Y: 4,
    M: 3,  Z: 10,
  }

  def self.score(word)
    self.new(word).score
  end

  private

  def initialize(word, tiles = TILES)
    @letters = word.to_s.upcase.chars.map(&:to_sym)
    @tiles = tiles.dup
    @tiles.default = 0
  end

  attr_accessor :letters, :tiles

  public

  def score()
    letters.sum { |letter| tiles[letter]}
  end
end

if $PROGRAM_NAME == __FILE__
  Hawaiian_Tiles = {
     A: 1, N: 3,
     O: 2,
     P: 8,
     E: 4,
     H: 6, U: 5,
     I: 3,
     W: 9,
     K: 2,
     L: 7,
     M: 8
   }.freeze

   puts Scrabble.new("'Ae", Hawaiian_Tiles).score
   puts Scrabble.new(nil, Hawaiian_Tiles).score.inspect
end
