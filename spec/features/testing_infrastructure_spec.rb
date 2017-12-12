require "rails_helper"

feature 'test infrastructure' do
  scenario 'index page says hello' do
    visit '/'
    expect(page).to have_content("Does Marie Approve")
  end
end
