class Year
  def self.leap?(year)
    if (year % 4 == 0 and (year % 100 != 0 or year % 400 == 0))
      return true
    end
    return false
  end
end
