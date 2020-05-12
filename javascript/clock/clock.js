const HOUR_MINUTES = 60;
const DAY_MINUTES = 24 * 60;

const modulus = (time_as_minutes) => (DAY_MINUTES + (time_as_minutes % DAY_MINUTES)) % DAY_MINUTES;

export class Clock {
  constructor(hours, minutes = 0) {
    this.time_as_minutes = modulus(hours * HOUR_MINUTES + minutes);
  }

  calculateMinutes() {
    return this.time_as_minutes % HOUR_MINUTES;
  }

  calculateHours() {
    return Math.floor(this.time_as_minutes / HOUR_MINUTES);
  }

  toString() {
    return [this.calculateHours(), this.calculateMinutes()].map(time => `${time}`.padStart(2, '0')).join(':');
  }

  plus(minutes) {
    return new Clock(0, this.time_as_minutes + minutes);
  }

  minus(minutes) {
    return this.plus(-minutes);
  }

  equals(clock) {
    return this.time_as_minutes == clock.time_as_minutes;
  }
}
