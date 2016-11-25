class FizzBuzz
  def initialize(list)
    @list = list
  end

  def run
    @list.map { |item| FizzBuzzItem.new(item) }.map(&:result)
  end
end

class FizzBuzzItem
  def initialize(number)
    @number = number
  end

  def fizz?
    @number % 3 == 0
  end

  def buzz?
    @number % 5 == 0
  end

  def result
    result = ''
    result += 'Fizz' if fizz?
    result += 'Buzz' if buzz?
    result = result.empty? ? @number : result
  end
end