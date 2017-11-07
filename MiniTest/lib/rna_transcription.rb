class Complement
  def self.of_dna(dna)
    rna = ''
    0.upto(dna.length - 1) do |i|
      case dna[i]
      when 'C'
        rna.concat('G')
      when 'G'
        rna.concat('C')
      when 'T'
        rna.concat('A')
      when 'A'
        rna.concat('U')
      else
        rna.clear
        break
      end
    end
    rna
  end
end

module BookKeeping
  VERSION = 4
end
