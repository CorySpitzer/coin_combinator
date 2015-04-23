require('./app')
# require('sinatra')
# require('sinatra/reloader')
require('capybara/rspec')
Capybara.app = Sinatra::Application

describe('the coin conbinator path',{:type => :feature}) do
  it('processes the number of cents and returns the number of each coin') do
    visit('/')
    fill_in('amount', {:with => '178'})
    click_button('submit')
    expect(page).to(have_content('quarters: 7 pennies: 3'))
  end
end
