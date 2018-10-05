class Sieve
  attr_reader :primes
  def initialize(number)
    @primes = generate_primes(number)
  end

  private

  def generate_primes(number)
    number_list = (2..number).to_a
    primes = []

    while number_list.any?
      prime = number_list.shift
      primes << prime

      number_list.reject! { |candidate| (candidate % prime).zero? }
    end

    primes
  end
end
