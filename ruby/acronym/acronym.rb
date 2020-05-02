class Acronym
  def self.abbreviate(long_name)
    long_name.scan(/\b\w/).join.upcase
  end
end
