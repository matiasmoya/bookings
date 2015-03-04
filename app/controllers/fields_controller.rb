class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fields = Field.all
    respond_with(@fields)
  end

  def show
    respond_with(@field)
  end

  def new
    @field = current_owner.venue.fields.build
    respond_with(@field)
  end

  def edit
  end

  def create
    @field = current_owner.venue.fields.build(field_params)
    @field.save
    respond_with(@field)
  end

  def update
    @field.update(field_params)
    respond_with(@field)
  end

  def destroy
    @field.destroy
    respond_with(@field)
  end

  private
    def set_field
      @field = Field.find(params[:id])
    end

    def field_params
      params.require(:field).permit(:name, :venue_id)
    end
end
