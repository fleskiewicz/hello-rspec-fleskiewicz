class Gigasecond
  GIGA = 10**9
  def self.from(birth_date)
    (birth_date + GIGA)
  end
end

module BookKeeping
  VERSION = 6
end
