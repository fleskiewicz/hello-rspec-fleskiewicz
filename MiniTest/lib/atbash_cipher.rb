# AtBash
# Based on 10000% more transparent solutions of other people
class Atbash
  def self.encode(sentence)
    alphabet = ('a'..'z').to_a.join
    sentence.downcase
            .gsub(/[^a-z0-9\-]/, '')
            .tr(alphabet, alphabet.reverse)
            .scan(/.{1,5}/)
            .join(' ')
  end
end
