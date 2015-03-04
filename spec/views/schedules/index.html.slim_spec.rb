require 'rails_helper'

RSpec.describe "schedules/index", :type => :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        :start_at => 1,
        :ends_at => 2,
        :venue => ""
      ),
      Schedule.create!(
        :start_at => 1,
        :ends_at => 2,
        :venue => ""
      )
    ])
  end

  it "renders a list of schedules" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
