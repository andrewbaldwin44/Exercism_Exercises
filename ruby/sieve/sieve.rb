class Sieve
  def initialize(limit)
    @limit = limit
  end

  private
  attr_reader :limit

  public

  def primes
    sequence = (2..limit).to_a
    some = []

    p sequence

    sequence.each do |number|
      (number..limit).step(number) do |not_prime|
        p not_prime
        sequence.delete(not_prime)
      end
    end
    p some
    sequence
  end
end

p Sieve.new(6).primes
