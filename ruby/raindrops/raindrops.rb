class Raindrops
  class << self
    def convert(number)
      sound = ''
      factors = find_factors(number)
      sound << 'Pling' if factors.include?(3)
      sound << 'Plang' if factors.include?(5)
      sound << 'Plong' if factors.include?(7)
      return number.to_s if sound.empty?
      sound
    end

    private

    def find_factors(number)
      factors = []
      (1..number).each do |n|
        factors << n if (number % n).zero?
      end
      factors
    end
  end
end
