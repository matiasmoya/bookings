require 'rails_helper'

RSpec.describe "schedules/new", :type => :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      :start_at => 1,
      :ends_at => 1,
      :venue => ""
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input#schedule_start_at[name=?]", "schedule[start_at]"

      assert_select "input#schedule_ends_at[name=?]", "schedule[ends_at]"

      assert_select "input#schedule_venue[name=?]", "schedule[venue]"
    end
  end
end
