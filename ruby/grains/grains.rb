class Grains
  def self.square(number)
    raise ArgumentError if number <= 0 || number > 64
    2**(number-1)
  end

  def self.total()
    2**64-1
  end
end
