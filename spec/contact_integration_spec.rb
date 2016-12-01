require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the Contact page', {:type => :feature}) do
  it('takes user input and creates a contact, then sends user to success page') do
    visit('/')
    fill_in('first_input', :with => 'Clark')
    fill_in('last_input', :with => 'Kent')
    fill_in('title_input', :with => 'Reporter')
    fill_in('street_input', :with => '400 SW Cannon Street')
    fill_in('city_input', :with => 'Metropolis')
    fill_in('state_input', :with => 'Massachusetts')
    fill_in('zip_input', :with => '97219')
    fill_in('email_input', :with => 'supermanshh@gmail.com')
    fill_in('email_type_input', :with => 'super secret')
    fill_in('phone_input', :with => '555555555')
    fill_in('phone_type_input', :with => 'super top secret')
    click_button("Create Contact!")
    expect(page).to have_content('Success!')
  end
end
