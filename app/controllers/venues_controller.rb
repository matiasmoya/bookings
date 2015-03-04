class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @venues = Venue.all
    respond_with(@venues)
  end

  def show
    respond_with(@venue)
  end

  def new
    @venue =  current_owner.build_venue
    respond_with(@venue)
  end

  def edit
  end

  def create
    @venue = current_owner.build_venue(venue_params)
    @venue.save
    respond_with(@venue)
  end

  def update
    @venue.update(venue_params)
    respond_with(@venue)
  end

  def destroy
    @venue.destroy
    respond_with(@venue)
  end

  private
    def set_venue
      @venue = Venue.find(params[:id])
    end

    def venue_params
      params.require(:venue).permit(:name, :owner_id)
    end
end
