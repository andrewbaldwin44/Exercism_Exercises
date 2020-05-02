const transcript = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
}
export const toRna = strand => {
  return strand.split('').map(nucleo => transcript[nucleo]).join('');
};
