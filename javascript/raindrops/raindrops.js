export const convert = number => {
  let string = "";
  if (number % 3 == 0) string += "Pling";
  if (number % 5 == 0) string += "Plang";
  if (number % 7 == 0) string += "Plong";
  if (!string) return String(number);
  return string;
};
