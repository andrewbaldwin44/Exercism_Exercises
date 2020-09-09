class Triangle
  def initialize(sides)
    @sides = sides
  end

  private

  attr_reader :sides

  def triangle?
    @triangle ||= sides if sides.none?(&:zero?) && sides.min(2).sum > sides.max
    !!@triangle
  end

  def unique_sides?(quantity)
    sides.uniq.length == quantity
  end

  public

  def equilateral?
    triangle? && unique_sides?(1)
  end

  def isosceles?
    triangle? && !scalene?
  end

  def scalene?
    triangle? && unique_sides?(3)
  end

  def degenerate?
    sides.min(2).sum == sides.max && sides.none?(&:zero?)
  end
end

if $PROGRAM_NAME == __FILE__
  require_relative "report"
  Triangle.include Report
  puts Triangle.new([1, 1.2, 1.5]).report
  puts Triangle.new([1, 2, 3]).report
  puts Triangle.new([3, 4, 4]).report
  puts Triangle.new([4, 4, 4]).report
  puts Triangle.new([2, 3, 4]).report.reverse
end

if defined? Minitest
  describe "Rocking the degenerate triangle test" do
    it 'must be true that this is a degenerate triangle' do
      expect(Triangle.new([1, 2, 1]).degenerate?).must_equal true
    end
  end
end
