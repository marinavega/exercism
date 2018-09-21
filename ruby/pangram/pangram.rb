class Pangram
  class << self
    def pangram?(sentence)
      sentence.downcase!
      return false if sentence.empty?
      return false unless includes?(sentence)
      true
    end

    def alphabet
      ('a'..'z').to_a
    end

    def includes?(sentence)
      sentence.gsub!(/[^0-9A-Za-z]/, '')
      alphabet.each { |letter| return false unless sentence.include?(letter) }
    end
  end
end
