require 'rails_helper'

feature 'Edit restaurant' do
  scenario 'When you press edit button on show page you should see a form' do
    sign_up_and_sign_in
    create_restaurant
    visit '/restaurants/1/'
    expect(page).to have_button('Edit')
  end
end
