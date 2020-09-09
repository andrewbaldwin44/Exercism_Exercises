export const classify = number => {
  if (number <= 0) throw new Error("Classification is only possible for natural numbers.");

  let aliquot_sum = 0;
  for (let i = 0; i <= number / 2; i++) {if (number % i == 0) aliquot_sum += i;}

  if (aliquot_sum == number) return 'perfect';
  else if (aliquot_sum > number) return 'abundant';
  else return 'deficient';
};
