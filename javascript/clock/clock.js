export class Clock {
  constructor(hours = 0, minutes = 0) {
    this.date = new Date();
    this.date.setHours(hours);
    this.date.setMinutes(minutes);
  }

  toString() {
    return this.date.toTimeString().slice(0, 5);
  }

  plus(minutes) {
    this.date.setMinutes(this.date.getMinutes() + minutes);
    return this;
  }

  minus(minutes) {
    this.date.setMinutes(this.date.getMinutes() - minutes);
    return this;
  }

  equals(clock) {
    return this.toString() == clock.toString()
  }
}
