require 'rspec'
require_relative '../fizzbuzz-3'

RSpec.describe 'FizzBuzz' do
  describe 'FizzBuzz execution' do
    subject { FizzBuzz.new(list).run }

    context 'when list have 5 items' do
      let(:list) { (1..5).to_a }
      it { expect(subject).to eq [1, 2, 'Fizz', 4, 'Buzz']}
    end

    context 'when list have 15 items' do
      let(:list) { (1..15).to_a }
      it { expect(subject).to eq [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, "Fizz", 13, 14, "FizzBuzz"]}
    end
  end
end