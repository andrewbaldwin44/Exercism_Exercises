class Transpose
  def self.transpose(input)
    rows = input.split("\n").map { |row| row.chars }
    rows.transpose.map(&:join).join("\n")
  end
end

Transpose.transpose("The fourth line.\nThe fifth line.")
