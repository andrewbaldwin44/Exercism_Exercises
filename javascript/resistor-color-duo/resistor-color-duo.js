const colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"];

export const decodedValue = (array) => {
  let numericValue = "";
  for (let i = 0; i < 2; i++) {
      numericValue += colors.indexOf(array[i])
  }
  
  return Number(numericValue);
};
