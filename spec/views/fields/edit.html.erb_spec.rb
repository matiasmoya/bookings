require 'rails_helper'

RSpec.describe "fields/edit", :type => :view do
  before(:each) do
    @field = assign(:field, Field.create!(
      :name => "MyString",
      :venue => nil
    ))
  end

  it "renders the edit field form" do
    render

    assert_select "form[action=?][method=?]", field_path(@field), "post" do

      assert_select "input#field_name[name=?]", "field[name]"

      assert_select "input#field_venue_id[name=?]", "field[venue_id]"
    end
  end
end
