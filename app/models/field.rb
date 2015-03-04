class Field < ActiveRecord::Base
  belongs_to :venue
  has_many :bookings
  has_many :schedules, through: :venue
end
