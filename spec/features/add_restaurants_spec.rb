require "rails_helper"
feature 'adds a restaurant' do
 scenario 'Page should be have a form to add a restaurant' do
    sign_up_and_sign_in
    visit '/restaurants/new'
    expect(page).to have_field('name')
    expect(page).to have_field('description')
    expect(page).to have_field('imageurl')
    expect(page).to have_field('location')
  end
end


feature 'adds a restaurant' do
 scenario 'Page should be have a form to add a restaurant' do
    sign_up_and_sign_in
    create_restaurant
    expect(page).to have_current_path('/restaurants')
  end
end
