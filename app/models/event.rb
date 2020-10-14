class Event < ApplicationRecord
    has_many :event_atendees
    belongs_to :user, class_name: :User, foreign_key: :creator_id
end
