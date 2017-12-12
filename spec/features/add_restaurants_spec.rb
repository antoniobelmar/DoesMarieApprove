require "rails_helper"

feature 'adds a restaurant' do
 scenario 'Page should be have a form to add a restaurant' do
    visit '/restaurants/new'
    expect(page).to have_field('name')
    expect(page).to have_field('description')
    expect(page).to have_field('imageurl')
    expect(page).to have_field('location')
  end
end


feature 'adds a restaurant' do
 scenario 'Page should be have a form to add a restaurant' do
    visit '/restaurants/new'
    fill_in('name', with: 'Allans')
    fill_in('description', with: '10 stars pizza')
    fill_in('imageurl', with: 'http://google.com')
    fill_in('location', with: 'Shoreditch')
    click_button('Add Your Restaurant')
    expect(page).to have_current_path('/')
  end
end
