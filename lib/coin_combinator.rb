class Fixnum
  define_method(:coin_combine) do
    coins = {
      'pennies'  => 0,
      'nickles'  => 0,
      'dimes'    => 0,
      'quarters' => 0
    }

    amount = self
    change = amount

    until change == 0
      if change < 5
        penny_quantity = change
        coins['pennies'] = penny_quantity
        change = change - penny_quantity
      elsif change < 10
        nickle_quantity = change / 5
        coins['nickles'] = nickle_quantity
        change = change - (nickle_quantity * 5)
      elsif change < 25
        dime_quantity = change / 10
        coins['dimes'] = dime_quantity
        change = change - (dime_quantity * 10)
      # if amount < 5
      #   coins['pennies'] = amount
      # elsif amount < 10
      #
      #   until amount.==(0)
      #
      #   end
      #   remainder = amount.%(5)
      #   coins['pennies'] = remainder
      #   nickle_quantity = amount / 5
      #   coins['nickles'] = nickle_quantity
      # elsif amount < 25
      #
      # end
      end
    end
    coins
  end
end
