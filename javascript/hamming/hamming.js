export const compute = (strand1, strand2) => {
  if (!strand1 && strand2) throw 'left strand must not be empty';
  if (strand1 && !strand2) throw 'right strand must not be empty';
  if (strand1.length != strand2.length) throw 'left and right strands must be of equal length';
  return strand1.split("").filter((item, index) => {if (strand1[index] != strand2[index]) return item}).join("").length;
};
