class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, foreign_key: 'creator_id'
  has_many :event_atendees, foreign_key: 'atendee_id', class_name: 'EventAtendee'
  has_many :attended_events, through: :event_atendees
end
