require 'rails_helper'

RSpec.feature "SingUpAndCreateUsers", type: :feature do

  scenario 'they can sign up and create events' do
    visit new_user_registration_path
    fill_in 'user_name', with: 'Diego Lira'
    fill_in 'user_email', with: 'diegoalira@gmail.com'
    fill_in 'user_password', with: '123123'
    fill_in 'user_password_confirmation', with: '123123'
    click_button 'Sign up'
    expect(page).to have_content('Events')
    visit new_event_path
    expect(page).to have_content('New Event')
    fill_in 'event[name]', with: 'Event Name Test'
    fill_in 'event[description]', with: 'Event Description Teste'
    have_select('event[date(1i)]', selected: 'Option 2')
    have_select('event[date(2i)]', selected: 'Option 2')
    have_select('event[date(3i)]', selected: 'Option 2')
    click_button 'Create Event'
    expect(page).to have_content('Event Name Test')
    expect(page).to have_content('Event Description Teste')
  end

end
