class TwoFer
  TWO_FER =
     {
       English: -> first_name {"One for #{first_name}, one for me."},
       Spanish: -> first_name {"Uno para el #{first_name}, uno para mí."},
       German:  -> first_name {"Einer für den #{first_name}, einer für mich."},
       Dutch:   -> first_name {"Eén voor #{first_name}, één voor mij."}
     }

  def self.two_fer(first_name = 'you', language = :English)
    TWO_FER[language][first_name]
  end
end

if $PROGRAM_NAME == __FILE__
  puts TwoFer.two_fer
  puts TwoFer.two_fer 'Jorge', :Spanish
  puts TwoFer.two_fer 'Bjorn', :Dutch
  puts TwoFer.two_fer 'George'
end
