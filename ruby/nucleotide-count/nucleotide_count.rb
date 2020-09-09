class Nucleotide
  def self.from_dna(dna_string)
    raise ArgumentError unless dna_string.gsub(/[ATCG]/, '').empty?

    @@dna_string = dna_string.split("")
    self
  end

  def self.count(nucleotide)
    @@dna_string.count(nucleotide)
  end

  def self.histogram
    dna_count = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @@dna_string.each_with_object(dna_count) { |nucleotide, count| count[nucleotide] += 1 }
  end
end
