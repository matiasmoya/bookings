require 'rails_helper'

RSpec.describe "fields/index", :type => :view do
  before(:each) do
    assign(:fields, [
      Field.create!(
        :name => "Name",
        :venue => nil
      ),
      Field.create!(
        :name => "Name",
        :venue => nil
      )
    ])
  end

  it "renders a list of fields" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
