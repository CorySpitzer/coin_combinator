require('rspec')
require('coin_combinator')

describe('Fixnum#coin_combine') do
  # If we give it zero, it will return no coins
  it("returns a hash with zero coins if user inputs zero") do
    expect(0.coin_combine).to(eq({'pennies' => 0}))
  end

  # If we give it 1, it will return a penny
  it('returns a hash with 1 penny if user inputs 1') do
    expect(1.coin_combine).to(eq({'pennies' => 1}))
  end

end
