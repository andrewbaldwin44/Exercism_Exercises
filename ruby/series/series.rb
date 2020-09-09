class Series
  def initialize(series)
    @series = series
  end

  def slices(digits)
    raise ArgumentError if digits > series.length
    series.chars.each_cons(digits).map(&:join)
  end

  private
  attr_accessor :series
end
