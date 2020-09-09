export const score = (x, y) => {
  const radius = Math.sqrt(x**2 + y**2);

  if (radius <= 1) return 10;
  else if (radius <= 5) return 5;
  else if (radius <= 10) return 1;
  else return 0;
};
