require('rspec')
require('calculator')

describe('calculate') do
  it('calculates 5 plus 3') do
    calculate('What is 5 plus 3?').should(eq(8))
  end
  
  it('calculates exponents') do
    calculate('What is 2 to the power of 5?').should(eq(32))
  end
end
