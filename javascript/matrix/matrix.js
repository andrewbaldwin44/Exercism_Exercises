export class Matrix {
  constructor(matrix) {
    this.matrix = matrix.split("\n");
  }

  get rows() {
    if (typeof this._rows === 'undefined')
      this._rows = this.matrix.map(row => row.split(" ").map(Number));
    return this._rows;
  }

  get columns() {
    return this._columns = this.rows[0].map((column, colIndex) => {
      return this.rows.map((row) => row[colIndex])
    });
  }
}
