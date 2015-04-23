require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinator.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/combinator') do
  quantity_hash = params.fetch('amount').to_i().coin_combine()
  quarters = quantity_hash['quarters'].to_s()
  dimes = quantity_hash['dimes'].to_s()
  nickles = quantity_hash['nickles'].to_s()
  pennies = quantity_hash['pennies'].to_s()

  @result = "quarters: " + quarters + " pennies: " + pennies
end
