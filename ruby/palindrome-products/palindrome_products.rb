class Palindromes
  def initialize(min_factor: 1, max_factor:)
    @products = (min_factor..max_factor).to_a.repeated_combination(2)
  end

  private

  attr_reader :products, :palindromes, :min_max_product

  public

  def generate
    @palindromes = products.map { |product| product.inject(&:*) }
                           .select { |product| product if product <= 9 || product.digits.join.to_i == product }
    self
  end

  def largest
    @min_max_product = palindromes.max
    self
  end

  def smallest
    @min_max_product = palindromes.min
    self
  end

  def value
    min_max_product
  end

  def factors
    products.select { |product| product.inject(:*) == min_max_product }
  end
end
