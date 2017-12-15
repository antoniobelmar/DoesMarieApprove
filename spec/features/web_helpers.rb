def sign_up_and_sign_in
  visit '/users/new'
  fill_in('user[name]', with: 'Allan')
  fill_in('user[email]', with: 'allan@allan.com')
  fill_in('user[password]', with: 'allan123')
  fill_in('user[password_confirmation]', with: 'allan123')
  click_button('Create my account')
end

def create_restaurant
  visit '/restaurants/new'
  fill_in('name', with: 'Foodnow noodle')
  fill_in('location', with: 'London')
  fill_in('description', with: 'The noodles are HOT!!!!!!!!!!!!')
  click_button('Add Your Restaurant')
end

def sign_up_wrong_password
  visit '/users/new'
  fill_in('user[name]', with: 'Allan')
  fill_in('user[email]', with: 'allan@allan.com')
  fill_in('user[password]', with: 'allan123')
  fill_in('user[password_confirmation]', with: 'allan1234')
  click_button('Create my account')
end

def sign_up_short_password
  visit '/users/new'
  fill_in('user[name]', with: 'Allan')
  fill_in('user[email]', with: 'allan@allan.com')
  fill_in('user[password]', with: '1234')
  fill_in('user[password_confirmation]', with: '1234')
  click_button('Create my account')
end
