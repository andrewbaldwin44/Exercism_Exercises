class BeerSong
  def self.get_bottle_amount(amount)
    if amount > 0
      amount
    elsif amount == 0
      "no more"
    else
      99
    end
  end

  def self.recite(current, verses)
    (current - verses + 1..current).to_a.reverse_each.each_with_object([]) do |round, song|
      verse = -> (bottles){"bottle#{"s" unless bottles == 1} of beer"}

      action =
        round > 0 \
          ? "Take #{round > 1 ? "one" : "it"} down and pass it around"
          : "Go to the store and buy some more"

      current_amount = get_bottle_amount(round)
      one_less_amount = get_bottle_amount(round - 1)

      current_amount_verse = verse.call(round)
      one_less_verse = verse.call(round - 1)

      song << <<~TEXT
        #{current_amount.is_a?(Integer) ? current_amount : current_amount.capitalize} \
        #{current_amount_verse} on the wall, #{current_amount} #{current_amount_verse}.
        #{action}, #{one_less_amount} #{one_less_verse} on the wall.
      TEXT
    end.join("\n")
  end
end
