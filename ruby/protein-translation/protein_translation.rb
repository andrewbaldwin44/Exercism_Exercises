class InvalidCodonError < StandardError
end

class Translation
  CODON_PROTEINS = {
    ['AUG'] =>                      'Methionine',
    ['UUU', 'UUC'] =>               'Phenylalanine',
    ['UUA', 'UUG'] =>               'Leucine',
    ['UCU', 'UCC', 'UCA', 'UCG'] => 'Serine',
    ['UAU', 'UAC'] =>               'Tyrosine',
    ['UGU', 'UGC'] =>               'Cysteine',
    ['UGG'] =>                      'Tryptophan',
    ['UAA', 'UAG', 'UGA'] =>        'STOP'
  }

  def self.of_codon(codon)
    raise InvalidCodonError unless codon.scan(/[AUGC]/) == codon.chars

    CODON_PROTEINS.each { |codons, protein| return protein if codons.include?(codon) }
  end

  def self.of_rna(strand)
    proteins = strand.chars.each_slice(3).each_with_object([]) do |codon, proteins|
      protein = of_codon(codon.join)
      return proteins if protein == 'STOP'
      proteins << protein
    end
  end
end
