export const square = square => {
  if (square <= 0 || square > 64) throw new Error("square must be between 1 and 64");
  
  return 2n**BigInt(square - 1);
};

export const total = () => 2n**64n - 1n;
