class CollatzConjecture
  def self.steps(n)
    raise ArgumentError.new('n must be greater than 0') if n <= 0

    total_steps = 0

    until n == 1
      n = (n % 2).zero? ? n / 2 : n * 3 + 1
      total_steps += 1
    end
    total_steps
  end
end
