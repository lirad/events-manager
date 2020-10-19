require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create!(name: 'Diego Lira', email: 'diegoalira@gmail.com', password: '123123')
    @event_future = @user.events.create(date: '18.11.2100', name: 'Event name 1', description: 'Description text 1')
    @event_past = @user.events.create(date: '18.11.2020', name: 'Event name 2', description: 'Description text 2')
    @event_attended = EventAtendee.create(event_id: @event_future.id, atendee_id: @user.id)
  end

  context 'check for user actions' do
    it 'user creation' do
      expect(User.first).to eq(@user)
    end

    it 'user can create events' do
      expect(@user.events).to eq([@event_future, @event_past])
    end

    it 'user can attend events' do
      expect(@user.event_atendees.first).to eq(@event_attended)
    end
  end
end
