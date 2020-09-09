const earthYearSeconds = 315576e2;
const planetOrbitEarthYears = {
  mercury: 0.2408467,
  venus: 0.61519726,
  earth: 1,
  mars: 1.8808158,
  jupiter: 11.862615,
  saturn: 29.447498,
  uranus: 84.016846,
  neptune: 164.79132
}

//Round age to nearest 100th
let round = earthYearAge => Math.round(earthYearAge * 100) / 100;

export const age = (planet, ageSeconds) => {
  let earthYearAge = ageSeconds / (planetOrbitEarthYears[planet] * earthYearSeconds);

  return round(earthYearAge);
};
