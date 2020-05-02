TRANSCRIPTION = {
    "G": "C",
    "C": "G",
    "T": "A",
    "A": "U"
}

def to_rna(dna_strand):
    rna_strand = ""
    for i in dna_strand:
        rna_strand += TRANSCRIPTION[i]

    return rna_strand
