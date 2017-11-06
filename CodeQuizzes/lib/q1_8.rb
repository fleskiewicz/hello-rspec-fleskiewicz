class String
  def delete_last(n)
    n.times do
      self.chop!
    end
    self
  end
end
