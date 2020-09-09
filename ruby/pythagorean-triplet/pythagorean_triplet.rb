class Triplet
  def self.where(max_factor:, min_factor: 1, sum: nil)
    products = (min_factor..max_factor).to_a.repeated_combination(3)
                                             .each_with_object([]) do |combination, triplets|
      triplet = Triplet.new(*combination)

      triplets << triplet if triplet.pythagorean? && (sum.nil? || triplet.sum == sum)
    end
  end

  def initialize(a, b, c)
    @triplet = [a, b, c]
  end

  private

  attr_reader :triplet

  public

  def sum
    triplet.sum
  end

  def product
    triplet.inject(:*)
  end

  def pythagorean?
    triplet.min(2).sum { |value| value**2} == triplet.max**2
  end
end
