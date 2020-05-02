EARTH_YEAR_SECONDS = 31557600.0
ORBITAL_PERIODS = {
    "earth": 1,
    "mercury": 0.2408467,
    "venus": 0.61519726,
    "mars": 1.8808158,
    "jupiter": 11.862615,
    "saturn": 29.447498,
    "uranus": 84.016846,
    "neptune": 164.79132
}

class SpaceAge:
    def __init__(self, seconds):
        self.seconds = seconds
        self.round = lambda number : round(number, 2)

    def on_earth(self):
        return self.calculate(ORBITAL_PERIODS["earth"])
    def on_mercury(self):
        return self.calculate(ORBITAL_PERIODS["mercury"])
    def on_venus(self):
        return self.calculate(ORBITAL_PERIODS["venus"])
    def on_mars(self):
        return self.calculate(ORBITAL_PERIODS["mars"])
    def on_jupiter(self):
        return self.calculate(ORBITAL_PERIODS["jupiter"])
    def on_saturn(self):
        return self.calculate(ORBITAL_PERIODS["saturn"])
    def on_uranus(self):
        return self.calculate(ORBITAL_PERIODS["uranus"])
    def on_neptune(self):
        return self.calculate(ORBITAL_PERIODS["neptune"])

    def calculate(self, earth_years):
        return self.round(self.seconds / (earth_years * EARTH_YEAR_SECONDS))
