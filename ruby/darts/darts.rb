class Darts
  def initialize(x, y)
    @radius = Math.sqrt(x**2 + y**2)
  end

  private

  attr_reader :radius

  public

  def score
    if radius <= 1 then 10
    elsif radius <= 5 then 5
    elsif radius <= 10 then 1
    else 0
    end
  end
end
