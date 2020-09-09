class Bob
  FORCEFUL_QUESTION = /\A(?<=\b)[^a-z0-9]+\?\z/
  REGULAR_QUESTION = /\?\z/
  YELLING = /\A[^a-z]+(?<!\d)\z/
  SILENCE = /\A\s*\z/

  def self.hey(remark)
    case remark.strip
    when FORCEFUL_QUESTION then "Calm down, I know what I'm doing!"
    when REGULAR_QUESTION then "Sure."
    when YELLING then "Whoa, chill out!"
    when SILENCE then "Fine. Be that way!"
    else "Whatever."
    end
  end
end
