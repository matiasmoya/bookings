class HomeController < ApplicationController
  def index
    @schedules = Schedule.all
    @bookings = Booking.all
  end

  def search
    puts "\n\n <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts params.inspect
    puts "\n\n <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    start_at = params[:start_at]
    ends_at = params[:ends_at]
    name = params[:venue_name]

    @resultados = Venue.where("name LIKE ?", "%#{name}%")
    Field.joins(:schedules).where('schedules.start_at == ? AND schedules.ends_at == ?', start_at, ends_at).each {|f| @resultados << f}
    # @results = Field.all
  end
end
