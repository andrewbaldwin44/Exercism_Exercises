class Prime
  def self.nth(n)
    raise ArgumentError.new("no zeroth prime") if n.zero?

    primes = [2]

    (3..).step(2) do |number|
      break if primes.length == n
      primes << number if is_prime?(number)
    end

    primes.last
  end

  def self.is_prime?(n)
    (2..Math.sqrt(n)).none? { |number| (n % number).zero?}
  end
end
