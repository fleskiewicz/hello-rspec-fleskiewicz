class Float
  def to_money
    format("$%.2f", self)
  end
end
