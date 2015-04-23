class Fixnum
  define_method(:coin_combine) do
    coins = {
      'pennies' => 0
    }

    amount = self

    if amount < 5
      coins['pennies'] = amount
    elsif amount < 10
      #
      # until amount.==(0)
      #
      # end
      remainder = amount.%(5)
      coins['pennies'] = remainder
      nickle_quantity = amount / 5
      coins['nickles'] = nickle_quantity

    end

    coins
  end
end
