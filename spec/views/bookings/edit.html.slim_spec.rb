require 'rails_helper'

RSpec.describe "bookings/edit", :type => :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :user => nil,
      :field => nil,
      :schedule => nil
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_field_id[name=?]", "booking[field_id]"

      assert_select "input#booking_schedule_id[name=?]", "booking[schedule_id]"
    end
  end
end
