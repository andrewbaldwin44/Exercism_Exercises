codon_proteins = {
    "AUG": "Methionine",
    "UUU, UUC": "Phenylalanine",
    "UUA, UUG": "Leucine",
    "UCU, UCC, UCA, UCG": "Serine",
    "UAU, UAC": "Tyrosine",
    "UGU, UGC": "Cysteine",
    "UGG": "Tryptophan",
    "UAA, UAG, UGA": "STOP"
}

def proteins(strand):
    codon_array = []
    for i in range(0, len(strand), 3):
        protein = strand[i:i+3]

        for item in codon_proteins.keys():
            if protein in item and codon_proteins[item] == "STOP":
                return codon_array
            if protein in item:
                codon_array.append(codon_proteins[item])

    return codon_array
