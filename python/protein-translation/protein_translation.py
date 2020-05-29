CODON_PROTEINS = {
    ("AUG"): "Methionine",
    ("UUU, UUC"): "Phenylalanine",
    ("UUA, UUG"): "Leucine",
    ("UCU, UCC, UCA, UCG"): "Serine",
    ("UAU, UAC"): "Tyrosine",
    ("UGU, UGC"): "Cysteine",
    ("UGG"): "Tryptophan",
    ("UAA, UAG, UGA"): "STOP"
}

def proteins(strand):
    codon_array = []
    for i in range(0, len(strand), 3):
        codon = strand[i:i + 3]

        for (codons, protein) in CODON_PROTEINS.items():
            if codon in codons:
                if protein == "STOP":
                    return codon_array
                codon_array.append(protein)

    return codon_array
