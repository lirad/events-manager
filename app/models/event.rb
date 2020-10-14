class Event < ApplicationRecord
    has_many :event_atendees, :dependent => :delete_all
    belongs_to :user, class_name: :User, foreign_key: :creator_id
end
