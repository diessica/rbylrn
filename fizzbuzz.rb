class FizzBuzz
  def initialize(list)
    @list = list
  end

  def run
    @list.map do |item|
      case
      when item % 15 == 0 then 'FizzBuzz'
      when item % 3 == 0 then 'Fizz'
      when item % 5 == 0 then 'Buzz'
      else item
      end
    end
  end
end

FizzBuzz.new((1..15).to_a).run