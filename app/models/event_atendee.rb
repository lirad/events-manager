class EventAtendee < ApplicationRecord
  belongs_to :attendees, foreign_key: "atendee_id", class_name: 'User'
  belongs_to :attended_events, foreign_key: "event_id", class_name: 'Event'
end
