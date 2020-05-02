class Squares
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (0..number).sum**2
  end

  def sum_of_squares
    (0..number).inject{ |sum, number| sum + number**2}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
