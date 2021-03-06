require('rspec')
require('coin_combinator')

describe('Fixnum#coin_combine') do
  # If we give it zero, it will return no coins
  it("returns a hash with zero coins if user inputs zero") do
    expect(0.coin_combine).to(eq({'pennies'  => 0,
                                  'nickles'  => 0,
                                  'dimes'    => 0,
                                  'quarters' => 0}))
  end

  # If we give it 1, it will return a penny
  it('returns a hash with 1 penny if user inputs 1') do
    expect(1.coin_combine).to(eq({'pennies'  => 1,
                                  'nickles'  => 0,
                                  'dimes'    => 0,
                                  'quarters' => 0}))
  end

  # If we give it 2, it will return two pennies
  it('returns a hash with 2 pennies if user inputs 2') do
    expect(2.coin_combine).to(eq({'pennies'  => 2,
                                  'nickles'  => 0,
                                  'dimes'    => 0,
                                  'quarters' => 0}))
  end

  # If we give it 4, it will return four pennies
  it('returns a hash with 4 pennies if user inputs 4') do
    expect(4.coin_combine).to(eq({'pennies'  => 4,
                                  'nickles'  => 0,
                                  'dimes'    => 0,
                                  'quarters' => 0}))
    end

  # If we give it 5, it will return a nickle
  it('returns a hash with 0 pennies and 1 nickle') do
    expect(5.coin_combine).to(eq({'pennies'  => 0,
                                  'nickles'  => 1,
                                  'dimes'    => 0,
                                  'quarters' => 0}))

  end

  # handles 6 cents
  it('returns a nickle and a penny when given 6') do
    expect(6.coin_combine).to(eq({'pennies'  => 1,
                                  'nickles'  => 1,
                                  'dimes'    => 0,
                                  'quarters' => 0}))
  end

  # handles a dime
  it('Returns a dime when given 10') do
    expect(10.coin_combine).to(eq({'pennies'  => 0,
                                   'nickles'  => 0,
                                   'dimes'    => 1,
                                   'quarters' => 0}))
  end

  # handles 17 cents
  it('Returns a dime, nickle, and two pennies when given 17') do
    expect(17.coin_combine).to(eq({'pennies'  => 2,
                                   'nickles'  => 1,
                                   'dimes'    => 1,
                                   'quarters' => 0}))
    end

  # handles 67 cents
  it('Returns 2 quarters, 1 dime, 1 nickle, 2 pennies') do
    expect(67.coin_combine).to(eq({'pennies'  => 2,
                                   'nickles'  => 1,
                                   'dimes'    => 1,
                                   'quarters' => 2}))
    end
end
