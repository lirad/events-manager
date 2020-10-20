require 'rails_helper'

RSpec.describe EventAtendee, type: :model do
  before :each do
    @user = User.create!(name: 'Diego Lira', email: 'diegoalira@gmail.com', password: '123123')
    @event_future = @user.events.create(date: '18.11.2100', name: 'Event name 1', description: 'Description text 1')
    @event_attended = EventAtendee.create(event_id: @event_future.id, atendee_id: @user.id)
  end

  context 'can have an attendee' do
    it 'can be created' do
      expect(@user.attended_events.first.user).to eq(@user)
    end

    it 'can have events that will be attended to' do
      expect(Event.first).to eq(@event_future)
    end
  end
end
