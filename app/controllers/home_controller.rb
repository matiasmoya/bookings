class HomeController < ApplicationController
  def index
    @schedules = Schedule.all
    @bookings = Booking.all
  end
end
