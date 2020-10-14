class Event < ApplicationRecord
    has_many :event_atendees
    belongs_to :user, :foreign_key => :creator_id
end
