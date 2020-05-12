class Robot
  def self.forget
    @@name_generator = ('AA000'..'ZZ999').to_a.shuffle
  end

  def initialize
    reset
  end

  attr_reader :name

  def reset
    @name = @@name_generator.shift
  end
end
