const ALLERGIES_SCORE = {
  'eggs': 1,
  'peanuts': 2,
  'shellfish': 4,
  'strawberries': 8,
  'tomatoes': 16,
  'chocolate': 32,
  'pollen': 64,
  'cats': 128
}

export class Allergies {
  constructor(total_score) {
    this.total_score = total_score;
    this.allergy_scores = Object.values(ALLERGIES_SCORE);
  }

  list() {
    throw new Error("Remove this statement and implement this function");
  }

  allergicTo(allergens) {
    this.allergen_score = ALLERGIES_SCORE[allergens];

    this.all_allergies = this.sum_of_multiples();
    // console.log(this.all_allergies)
    //
    // let allergen_index = this.allergy_scores.indexOf(this.allergen_score);
    // this.allergy_scores.splice(allergen_index, 1);
    //
    //
    // if (this.total_score == 0) return false;
    // else if (this.total_score == this.allergen_score) return true;
    // else if (this.total_score >= this.allergen_score && !this.allergy_scores.includes(this.total_score)
    //         && this.all_allergies.includes(this.allergen_score)) {
    //   return true;
    // }
    // else return false;
  }

  // get_all_allergies() {
  //   let sequence = Array.from(Array(this.total_score), (_, i) => i);
  //   return this.allergy_scores.filter(score => {
  //     if (this.total_score % score == 0 && sequence.includes(this.total_score - score)) return score
  //   });
  // }
  sum_of_multiples() {
    let multiples = []
    for (let i = 0; i < this.total_score; i++) {
      this.allergy_scores.map(score => {
        console.log(score)
        if (i % score) multiples.push(i);
      })
    }
    console.log(multiples)
  }
}

console.log(new Allergies(7).allergicTo('peanuts'))
