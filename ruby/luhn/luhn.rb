
class Luhn
  def self.valid?(luhn_string)
    number_string = luhn_string.reverse.gsub(" ", "")
    number = number_string.gsub(/[^0-9]/, "")

    return unless number.length > 1 && number_string.length == number.length

    sum = number.split("").each_slice(2).sum do |first, second|
      double_2nd_number = second.to_i * 2
      second = double_2nd_number > 9 ? double_2nd_number - 9 : double_2nd_number
      first.to_i + second
    end
    (sum % 10).zero?
  end
end

if $PROGRAM_NAME == __FILE__
  p Luhn.valid?("0000 0")
end
