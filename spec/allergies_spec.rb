require('rspec')
require('./lib/allergies')

describe('AllergicScore#is_valid?') do
  let(:combination) { AllergicScore.new }

  it("returns falsey if a negative number is input") do
    expect(combination.is_valid?("-1")).to be_falsey
  end
  it("returns falsey if a word is input") do
    expect(combination.is_valid?("word")).to be_falsey
  end
  it("returns falsey if a number greater than 255 is input") do
    expect(combination.is_valid?("256")).to be_falsey
  end
  it("returns falsey if 0 is input") do
    expect(combination.is_valid?("0")).to be_falsey
  end
  it("returns truthy if a number less than 256 and greater than 0 is input") do
    expect(combination.is_valid?("12")).to be_truthy
  end
  it("returns falsey if a number with decimal is input") do
    expect(combination.is_valid?("25.6")).to be_falsey
  end
  it("returns falsey if a symbol is input") do
    expect(combination.is_valid?("&")).to be_falsey
  end
end
