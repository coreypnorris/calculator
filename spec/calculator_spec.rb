require('rspec')
require('calculator')

describe('calculate') do
  it('calculates 5 plus 3') do
    calculate('What is 5 plus 3?').should(eq(8))
  end
end
