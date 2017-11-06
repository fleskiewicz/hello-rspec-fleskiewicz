class Array
  def mean
    sum = 0
    self.each { |x| sum += x }
    sum.to_f / self.length.to_f
  end
end
