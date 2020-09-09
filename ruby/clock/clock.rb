class Clock
  HOUR_MINUTES = 60
  DAY_MINUTES = 1440

  ABSOLUTE = ->(hour, minute){((hour * HOUR_MINUTES) + minute) % DAY_MINUTES}

  def initialize(hour: 0, minute: 0)
    @absolute_minutes = ABSOLUTE.call(hour, minute)
  end

  attr_reader :absolute_minutes

  def to_s
    format("%02d:%02d", calculate_hours, calculate_minutes)
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

  private

  def calculate_hours
    (absolute_minutes / HOUR_MINUTES).round
  end

  def calculate_minutes
    absolute_minutes % HOUR_MINUTES
  end
end
