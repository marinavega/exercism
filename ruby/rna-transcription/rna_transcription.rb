module BookKeeping
  VERSION = 4
end

class Complement
  DNA_TO_RNA = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U'
  }.freeze
  
  class << self
    def of_dna(dna)
      dna_to_rna(dna)
    end
  
    def dna_to_rna(dna)
      rna = ''
      dna.each_char do |nucleotid|
        return '' if invalid_nucleotid?(nucleotid)
        rna << complementary_nucleotid(nucleotid)
      end
      rna
    end
  
    def complementary_nucleotid(nucleotid)
      DNA_TO_RNA[nucleotid.to_sym]
    end
  
    def invalid_nucleotid?(nucleotid)
      true if complementary_nucleotid(nucleotid).nil?
    end
  end
end
