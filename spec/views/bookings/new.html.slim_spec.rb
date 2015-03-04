require 'rails_helper'

RSpec.describe "bookings/new", :type => :view do
  before(:each) do
    assign(:booking, Booking.new(
      :user => nil,
      :field => nil,
      :schedule => nil
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_field_id[name=?]", "booking[field_id]"

      assert_select "input#booking_schedule_id[name=?]", "booking[schedule_id]"
    end
  end
end
