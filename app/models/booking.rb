class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :field
  belongs_to :schedule
end
