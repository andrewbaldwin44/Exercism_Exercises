class PerfectNumber
  def self.classify(number)
    raise RuntimeError unless number.positive?

    sum_of_factors = (1...number).select{ |factor| factor if (number % factor).zero? }.sum

    if sum_of_factors == number then 'perfect'
    elsif sum_of_factors > number then 'abundant'
    else 'deficient'
    end
  end
end
