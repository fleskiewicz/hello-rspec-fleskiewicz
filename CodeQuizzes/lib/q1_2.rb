def average_word_length(string)
  word = string.split(" ")
  return if word.empty?
  sum = 0
  word.each { |x| sum += x.length.to_f }
  sum / word.length
end
