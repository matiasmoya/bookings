class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bookings = Booking.all
    respond_with(@bookings)
  end

  def show
    respond_with(@booking)
  end

  def new
    @booking = Booking.new
    respond_with(@booking)
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      respond_to do |format|
        format.js
      end
    else
      redirect_to :root, notice: "There was an error with your booking"
    end
  end

  def update
    @booking.update(booking_params)
    respond_with(@booking)
  end

  def destroy
    if @booking.destroy!
      render :js => "$('tr[data-booking-destroy="+@booking.id.to_s+"]').fadeOut()"
    end
  end

  private
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:user_id, :field_id, :schedule_id)
    end
end
