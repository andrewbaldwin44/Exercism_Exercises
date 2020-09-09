class Complement
  RNA_TRANSCRIPTION =
  {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }
  def self.of_dna(strand)
    return strand.split("").map{ |i| RNA_TRANSCRIPTION[i]}.join
  end
end
