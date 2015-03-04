class Schedule < ActiveRecord::Base
  belongs_to :venue
  has_many :fields, through: :venue
  has_many :bookings
end
