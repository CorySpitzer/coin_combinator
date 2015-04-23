class Fixnum
  define_method(:coin_combine) do
    coins = {
      'pennies' => 0,
    }
    amount = self
    coins['pennies'] = amount
    coins
  end
end
