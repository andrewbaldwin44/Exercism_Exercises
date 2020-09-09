class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @rows = matrix.each_line.map { |i| i.split().map(&:to_i)}
  end

  def columns
    @columns = rows.transpose
  end

  private

  attr_accessor :matrix
end
