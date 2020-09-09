export const isArmstrongNumber = number => {
  number = String(number)
  return number.split("").reduce((sum, digit) => sum += Number(digit)**number.length, 0) == number
};
