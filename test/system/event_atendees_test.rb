require 'application_system_test_case'

class EventAtendeesTest < ApplicationSystemTestCase
  setup do
    @event_atendee = event_atendees(:one)
  end

  test 'visiting the index' do
    visit event_atendees_url
    assert_selector 'h1', text: 'Event Atendees'
  end

  test 'creating a Event atendee' do
    visit event_atendees_url
    click_on 'New Event Atendee'

    fill_in 'Event', with: @event_atendee.event_id
    fill_in 'User', with: @event_atendee.user_id
    click_on 'Create Event atendee'

    assert_text 'Event atendee was successfully created'
    click_on 'Back'
  end

  test 'updating a Event atendee' do
    visit event_atendees_url
    click_on 'Edit', match: :first

    fill_in 'Event', with: @event_atendee.event_id
    fill_in 'User', with: @event_atendee.user_id
    click_on 'Update Event atendee'

    assert_text 'Event atendee was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Event atendee' do
    visit event_atendees_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Event atendee was successfully destroyed'
  end
end
