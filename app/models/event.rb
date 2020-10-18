class Event < ApplicationRecord
    has_many :event_atendees
    belongs_to :user, :foreign_key => :creator_id

    scope :past_events, -> {where("date < ?", Time.now.beginning_of_day)}
    scope :future_events, -> {where("date >= ?", Time.now.beginning_of_day)} 
end
