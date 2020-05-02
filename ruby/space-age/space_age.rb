class SpaceAge
  attr_accessor :seconds

  EARTH_YEAR_SECONDS = 31557600.0
  ORBITAL_PERIOD_EARTH_SECONDS = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }
  ROUND = -> number {number.round(2)}

  def initialize(seconds)
    @seconds = seconds
  end

  ORBITAL_PERIOD_EARTH_SECONDS.each do |planet, earth_years|
    define_method("on_#{planet}") do
      space_age = (seconds / (earth_years * EARTH_YEAR_SECONDS))
      ROUND[space_age]
    end
  end
end
