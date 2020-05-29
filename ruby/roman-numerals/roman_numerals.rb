class Integer
  ROMAN_NUMBERS = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def to_roman(roman_numeral = '')
    return roman_numeral if self == 0

    ROMAN_NUMBERS.each do |divisor, numeral|
      next unless divisor <= self

      numeral_quantity, remaining = self.divmod(divisor)

      roman_numeral << numeral * numeral_quantity

      return remaining.to_roman(roman_numeral)
    end
  end
end
