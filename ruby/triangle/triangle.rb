class Triangle
  def initialize(triangle)
    @sides = triangle
    @triangle = triangle if triangle?
  end

  private

  attr_accessor :triangle, :sides

  def triangle?
    sides.none?(&:zero?) && sides.min(2).sum > sides.max
  end

  public

  def valid?
    report = 'A triangle with sides of %s is %s.'
    valid_or_invalid = triangle ? 'valid' : 'invalid'
    puts report % [sides.join(', '), valid_or_invalid]
    !!triangle
  end

  def equilateral?
    triangle && triangle.uniq.length == 1
  end

  def isosceles?
    triangle && !scalene?
  end

  def scalene?
    triangle && triangle.uniq.length == 3
  end

  def degenerate?
    sides.min(2).sum == sides.max && sides.none?(&:zero?)
  end
end

if $PROGRAM_NAME == __FILE__
  puts Triangle.new([1, 1.2, 1.5]).valid?
end
