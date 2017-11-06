class Array
  def sort_by_length
    self.sort_by(&:length)
  end
end
