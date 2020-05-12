class Clock
  HOUR_MINUTES = 60
  DAY_MINUTES = 24 * 60

  ABSOLUTE = ->(time_as_minutes){(DAY_MINUTES + (time_as_minutes % DAY_MINUTES)) % DAY_MINUTES}

  def initialize(time)
    time.default = 0
    @absolute_minutes = ABSOLUTE.call(time[:hour] * HOUR_MINUTES + time[:minute])
  end

  public

  attr_reader :absolute_minutes

  private

  def pad_zeroes(number)
    number = number.to_s
    number.length == 1 ? "0#{number}" : number
  end

  def calculate_hours
    pad_zeroes((absolute_minutes / HOUR_MINUTES).round)
  end

  def calculate_minutes
    pad_zeroes(absolute_minutes % HOUR_MINUTES)
  end

  public

  def to_s
    "#{calculate_hours}:#{calculate_minutes}"
  end

  def +(clock)
    Clock.new(minute: absolute_minutes + clock.absolute_minutes)
  end

  def -(clock)
    Clock.new(minute: absolute_minutes - clock.absolute_minutes)
  end

  def ==(clock)
    absolute_minutes == clock.absolute_minutes
  end
end
