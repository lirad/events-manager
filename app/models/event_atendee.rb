class EventAtendee < ApplicationRecord
  belongs_to :event
  belongs_to :user, foreign_key: :atendee_id
end
