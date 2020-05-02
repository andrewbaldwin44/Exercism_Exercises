require 'minitest/autorun'
require_relative 'scrabble_score'

class ScrabbleTest < Minitest::Test
  def test_empty_word_scores_zero
    assert_equal 0, Scrabble.new('').score
  end

  def test_whitespace_scores_zero
    #skip
    assert_equal 0, Scrabble.new(" \t\n").score
  end

  def test_nil_scores_zero
    #skip
    assert_equal 0, Scrabble.new(nil).score
  end

  def test_scores_very_short_word
    #skip
    assert_equal 1, Scrabble.new('a').score
  end

  def test_scores_other_very_short_word
    #skip
    assert_equal 4, Scrabble.new('f').score
  end

  def test_simple_word_scores_the_number_of_letters
    #skip
    assert_equal 6, Scrabble.new('street').score
  end

  def test_complicated_word_scores_more
    #skip
    assert_equal 22, Scrabble.new('quirky').score
  end

  def test_scores_are_case_insensitive
    #skip
    assert_equal 41, Scrabble.new('OXYPHENBUTAZONE').score
  end

  def test_convenient_scoring
    #skip
    assert_equal 13, Scrabble.score('alacrity')
  end
end

# if defined? Minitest
#   class AdditionalTests < Minitest::Test
#     def test_double_letters
#       assert_equal 16, Scrabble.new("hello").doubleLetters(["h"]).score
#     end
#
#     def test_multiple_double_letters
#       assert_equal 68, Scrabble.new("beziques").doubleLetters(["z", "q"]).score
#     end
#
#     def test_triple_letters
#       assert_equal 20, Scrabble.new("hello").tripleLetters(["h"]).score
#     end
#
#     def test_multiple_triple_letters
#       assert_equal 67, Scrabble.new("beziques").tripleLetters(["b", "q"]).score
#     end
#
#     def test_doubleWord
#       assert_equal 56, Scrabble.new("caziques").doubleWord.score
#     end
#
#     def test_tripleWord
#       assert_equal 84, Scrabble.new("caziques").tripleWord.score
#     end
#
#     def test_doubleWord_doubleLetter
#       assert_equal 136, Scrabble.new("oxazepam").doubleLetters(["z", "q"]).doubleWord.score
#     end
#
#     def test_tripleWord_tripleLetter
#       assert_equal 183, Scrabble.new("oxazepam").tripleLetters(["x", "p"]).tripleWord.score
#     end
#
#     def test_multiple_multipliers
#       assert_equal 1206, Scrabble.new("Oxyphenbutazone").doubleLetters(["p", "z"]).tripleWord.tripleWord.doubleWord.score
#     end
#   end
# end
