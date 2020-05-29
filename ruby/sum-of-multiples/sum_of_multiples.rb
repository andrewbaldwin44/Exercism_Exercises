class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  private

  attr_reader :multiples

  public

  def to(limit)
    (1...limit).sum { |number| multiples.any? { |multiple| (number % multiple).zero?} ? number : 0 }
  end
end
