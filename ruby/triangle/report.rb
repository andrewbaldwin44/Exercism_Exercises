module Report
  def report
    base = 'A triangle with sides of %s is %s.'
    if triangle?
      report = 'valid'
      report << ', equilateral' if equilateral?
      report << ', isosceles' if isosceles?
      report << ', scalene' if scalene?
      final_comma = /(.*),(.*)/
      report = report.gsub(final_comma, '\1, and\2')
    else
      report = 'invalid'
      report << ', and degenerate' if degenerate?
    end

    base % [sides.join(', '), report]
  end
end
