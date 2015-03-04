class Venue < ActiveRecord::Base
  belongs_to :owner
  has_many :fields
  has_many :schedules
end
