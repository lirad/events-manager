class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'creator_id'
  has_many :event_atendees
  has_many :attendees, through: :event_atendees, foreign_key: 'atendee_id'

  scope :past_events, -> { where('date < ?', Time.now.end_of_day) }
  scope :future_events, -> { where('date >= ?', Time.now.end_of_day) }
end
