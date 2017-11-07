class Hamming
  def self.compute(a, b)
    unless a.length == b.length
      raise ArgumentError
    end
    number_of_differences = 0
    0.upto(a.length-1) do |i|
      if a[i] != b[i]
        number_of_differences += 1
      end
    end
    number_of_differences
  end
end

module BookKeeping
  VERSION = 3
end
