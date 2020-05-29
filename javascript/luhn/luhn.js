export const valid = luhn => {
  if (luhn <= 1) return false

  luhn = luhn.replace(/[ ]/g, "").split("")

  for (let i = luhn.length - 2; i >= 0; i -= 2) {
    let doubled = Number(luhn[i]) * 2;
    luhn[i] = doubled > 9 ? doubled - 9 : doubled;
  }

  return luhn.reduce((sum, digit) => sum += Number(digit), 0) % 10 == 0;
};
