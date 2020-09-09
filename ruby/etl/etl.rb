class ETL
  def self.transform(old)
    old.each_with_object({}) do |(value, letters), new_scores|
      letters.map { |letter| new_scores[letter.downcase] = value}
    end
  end
end
