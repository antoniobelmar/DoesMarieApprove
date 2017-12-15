require 'rails_helper'
feature 'view all restaurants' do
  scenario 'Page should display all restaurants' do
    sign_up_and_sign_in
    create_restaurant
    expect(page.text).to include('Foodnow noodle' ,'London', 'The noodles are HOT!!!!!!!!!!!!')
  end
end
