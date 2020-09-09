class Raindrops
  RULES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    new(number).to_s
  end

  private

  def initialize(integer, rules = RULES)
    @integer = integer
    @rules = rules
    @sound = distill
  end

  attr_reader :rules, :integer, :sound

  def distill
    rules.each_with_object(sound = '') { |(factor, distill)| sound << distill if (integer % factor).zero? }
  end

  def drop
    sound.empty? ? integer : sound
  end

  public

  def to_s
    drop.to_s
  end
end

if $PROGRAM_NAME == __FILE__
  rules = {3 => 'Fizz', 5 => 'Buzz'}
  (-15..15).each do |integer|
    puts Raindrops.new(integer, rules)
  end
end
