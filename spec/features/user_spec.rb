require "rails_helper"

feature 'clicking sign up button' do
  scenario 'takes you to a new page with form' do
    visit '/'
    click_button('Sign up')
    expect(page).to have_content('Name')
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
    expect(page).to have_content('Password Confirmation')
  end

  scenario 'Signing up takes you to a page with the user name' do
    sign_up_and_sign_in
    expect(page).to have_content('Allan')
  end

  scenario 'Signing in gives you option to add new restaurant' do
    expect(page).to_not have_button('Add a new restaurant')
    sign_up_and_sign_in
    expect(page).to have_button('Add a new restaurant')
  end
end

feature 'Signing out' do
  scenario 'signing out shows sign up and sign in button' do
    sign_up_and_sign_in
    click_button('Sign Out')
    expect(page).to have_button('Sign up')
    expect(page).to have_button('Sign in')
    expect(page).to_not have_button('Add a new restaurant')
  end
end

feature 'Validation' do
  scenario 'signing up with same email address will throw error' do
    sign_up_and_sign_in
    click_button('Sign Out')
    sign_up_and_sign_in
    expect(page).to have_content('Email has already been taken')
  end

  scenario 'Wrong password confirmation will throw error' do
    sign_up_wrong_password
    expect(page).to have_content("Password confirmation doesn't match Password")
  end
end
