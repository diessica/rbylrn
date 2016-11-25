class FizzBuzz
  def initialize(list)
    @list = list
  end

  def run
    arr = []
    for i in @list do
      x = ''
      x += 'Fizz' if i % 3 == 0
      x += 'Buzz' if i % 5 == 0
      arr.push(x.empty? ? i : x)
    end
    arr
  end
end