export class NucleotideCounts {
  static parse(strand) {
    if (strand.match(/[^ACGT]/)) throw new Error('Invalid nucleotide in strand');

    return [...strand].reduce((nucleotideCount, nucleotide) => {
      nucleotideCount["ACGT".indexOf(nucleotide)]++;
      return nucleotideCount
    }, [0, 0, 0, 0]).join(' ');
  }
}
