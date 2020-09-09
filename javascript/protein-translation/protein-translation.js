const CODON_PROTEINS = {
    'AUG': 'Methionine',      'UUU': 'Phenylalanine',
    'UUC': 'Phenylalanine',   'UUA': 'Leucine',
    'UUG': 'Leucine',         'UCU': 'Serine',
    'UCC': 'Serine',          'UCA': 'Serine',
    'UCA': 'Serine',          'UCG': 'Serine',
    'UAC': 'Tyrosine',        'UAU': 'Tyrosine',
    'UGU': 'Cysteine',        'UGC': 'Cysteine',
    'UGG': 'Tryptophan',      'UAA': 'STOP',
    'UAG': 'STOP',            'UGA': 'STOP'
};

export const translate = strand => {
  let proteins = []
  if (!strand) return proteins;
  if (strand.match(/[ACGU]+/) != strand) throw new Error('Invalid codon');

  for (let i = 0; i < strand.length - 1; i += 3) {
    let protein = CODON_PROTEINS[strand.slice(i, i + 3)];
    if (protein == 'STOP') break;
    proteins.push(protein)
  }

  return proteins;
};
