export class Triangle {
  constructor(a, b, c) {
    this.sides = [a, b, c];
  }

  sumOfSides() {
    return Math.round(this.sides.reduce((a, b) => a + b, 0) * 10) / 10
  }

  triangle() {
    return 2 * Math.max(...this.sides) < this.sumOfSides();
  }

  uniqueSides(quantity) {
    return new Set(this.sides).size == quantity;
  }

  isEquilateral() {
    return (this.triangle() && this.uniqueSides(1));
  }

  isIsosceles() {
    return (this.triangle() && !this.isScalene());
  }

  isScalene() {
    return (this.triangle() && this.uniqueSides(3));
  }

  isDegenerate() {
    return this.sides.every(side => side > 0) && 2 * Math.max(...this.sides) == this.sumOfSides();
  }
}
