export class Squares {
  constructor(n) {
    this.n = n
  }

  get sumOfSquares() {
    this.sum = 0
    for (let i = 0; i < this.n + 1; i++) {this.sum += i**2}
    return this.sum
  }

  get squareOfSum() {
    return (this.n**2 + this.n)**2 / 4;
  }

  get difference() {
    return this.squareOfSum - this.sumOfSquares
  }
}
