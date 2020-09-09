class PrimeFactors
  def self.of(n)
    prime_factors = []
    candidate = 2

    until n == 1
      if n % candidate == 0
          prime_factors << candidate
          n = n / candidate
      else
          candidate += 1
      end
    end

    prime_factors
  end
end
