require('rspec')
require('calculator')

describe('calculate') do
  it('calculates 15 plus 3') do
    calculate('What is 15 plus 3?').should(eq(18))
  end

  it('calculates 15 minus 3') do
    calculate('What is 15 minus 3?').should(eq(12))
  end

  it('calculates 15 times 3') do
    calculate('What is 15 times 3?').should(eq(45))
  end

  it('calculates 15 divided by 3') do
    calculate('What is 15 divided by 3?').should(eq(5))
  end

  it('calculates exponents') do
    calculate('What is 2 to the power of 5?').should(eq(32))
  end
end
