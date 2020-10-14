class EventAtendee < ApplicationRecord
  belongs_to :event
  belongs_to :user, class_name: :User, foreign_key: :atendee_id
end
