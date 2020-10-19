require 'test_helper'

class EventAtendeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_atendee = event_atendees(:one)
  end

  test 'should get index' do
    get event_atendees_url
    assert_response :success
  end

  test 'should get new' do
    get new_event_atendee_url
    assert_response :success
  end

  test 'should create event_atendee' do
    assert_difference('EventAtendee.count') do
      post event_atendees_url, params:
      { event_atendee: { event_id: @event_atendee.event_id, user_id: @event_atendee.user_id } }
    end

    assert_redirected_to event_atendee_url(EventAtendee.last)
  end

  test 'should show event_atendee' do
    get event_atendee_url(@event_atendee)
    assert_response :success
  end

  test 'should get edit' do
    get edit_event_atendee_url(@event_atendee)
    assert_response :success
  end

  test 'should update event_atendee' do
    patch event_atendee_url(@event_atendee), params:
    { event_atendee: { event_id: @event_atendee.event_id, user_id: @event_atendee.user_id } }
    assert_redirected_to event_atendee_url(@event_atendee)
  end

  test 'should destroy event_atendee' do
    assert_difference('EventAtendee.count', -1) do
      delete event_atendee_url(@event_atendee)
    end

    assert_redirected_to event_atendees_url
  end
end
