export class Series {
  constructor(series) {
    this._digits = [...series].map(Number);
  }

  get digits() {
    return this._digits;
  }

  slices(length) {
    if (length > this._digits.length) throw new Error('Slice size is too big.');

    return this._digits.reduce((slices, _, index) => {
      if (index + length <= this._digits.length) slices.push(this._digits.slice(index, index + length));
      return slices;
    }, []);
  }
}
