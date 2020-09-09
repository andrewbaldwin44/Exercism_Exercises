class TwelveDays
  VERSES = \
  [
      ["first", "and a Partridge in a Pear Tree."],
      ["second", "two Turtle Doves, "],
      ["third", "three French Hens, "],
      ["fourth", "four Calling Birds, "],
      ["fifth", "five Gold Rings, "],
      ["sixth", "six Geese-a-Laying, "],
      ["seventh", "seven Swans-a-Swimming, "],
      ["eighth", "eight Maids-a-Milking, "],
      ["ninth", "nine Ladies Dancing, "],
      ["tenth", "ten Lords-a-Leaping, "],
      ["eleventh", "eleven Pipers Piping, "],
      ["twelfth", "twelve Drummers Drumming, "]
  ]

  def self.song
    VERSES.each_with_index.each_with_object("") do |((day, verse), index), song|
      song << format("On the %s day of Christmas my true love gave to me: %s%s",
          day,
          (0..index).reverse_each.map { |verse| index > 0 ? VERSES[verse][1] : VERSES[verse][1][4..] }.join(""),
          index < 11 ? "\n\n" : "\n"
          )
    end
  end
end
