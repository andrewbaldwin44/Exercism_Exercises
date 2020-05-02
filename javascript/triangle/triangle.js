export class Triangle {
  constructor(a, b, c) {
    this.name = "Triangle";
    this.a = a;
    this.b = b;
    this.c = c;
  }

  checkInteger() {
    return this.a > 0 && this.b > 0 && this.c > 0;
  }

  checkInequality() {
    return this.a + this.b < this.c || this.b + this.c < this.a || this.a + this.c < this.b;
  }

  checkDegenerate() {
    return this.a + this.b == this.c || this.b + this.c == this.a || this.a + this.c == this.b;
  }


  isEquilateral() {
    return (this.checkInteger() && !this.checkInequality() && this.a === this.b && this.b === this.c);
  }

  isIsosceles() {
    return (this.checkInteger() && !this.checkInequality() && this.name == "Triangle" && (this.a == this.b || this.b == this.c || this.a == this.c));
  }

  isScalene() {
    return (this.checkInteger() && !this.checkInequality() && this.name == "Triangle" && this.a != this.b && this.b != this.c && this.a != this.c);
  }
}
