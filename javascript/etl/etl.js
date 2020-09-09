export const transform = letters => {
  let newObject = {};
  for (let score in letters) {
    letters[score].map(letter => {
      newObject[String(letter).toLowerCase()] = +score
    });
  }
  return newObject;
};
