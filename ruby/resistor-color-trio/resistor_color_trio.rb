class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def initialize(colors)
    raise ArgumentError unless colors.all? { |color| COLORS.include?(color) }

    @colors = colors
  end

  private

  attr_accessor :resistance
  attr_reader :colors, :prefix

  def value
    colors.first(2).map{ |i| COLORS.index(i)}.join.to_i
  end

  def calculate_resistance
    @resistance = value * 10**(COLORS.index(colors.last))
    convert_resistance if @resistance >= 1000
  end

  def convert_resistance
    @prefix = "kilo"
    self.resistance = resistance / 1000
  end

  public

  def label
    calculate_resistance
    "Resistor value: #{resistance} #{prefix}ohms"
  end
end
