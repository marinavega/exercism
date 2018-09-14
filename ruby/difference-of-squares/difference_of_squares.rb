class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    result = 0
    (1..@number).each { |n| result += n }
    result**2
  end

  def sum_of_squares
    result = 0
    (1..@number).each { |n| result += n**2 }
    result
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def operation(number)
    result = 0
    (1..@number).each { |n| result += n }
    result
  end
end
