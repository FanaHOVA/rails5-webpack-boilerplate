require 'rails_helper'

feature 'user sessions' do
  before { create :user, email: 'test@example.com',
                         password: 'testing',
                         password_confirmation: 'testing' }

  scenario 'logs in and logs out with valid params' do
    visit '/'
    click_on 'Log In'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'testing'
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully.')
    click_on 'Log Out'
    expect(page).to have_content('Signed out successfully.')
  end

  scenario "can't login with invalid params" do
    visit '/'
    click_on 'Log In'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'hayeee'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end
end
