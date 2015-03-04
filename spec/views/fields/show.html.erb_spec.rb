require 'rails_helper'

RSpec.describe "fields/show", :type => :view do
  before(:each) do
    @field = assign(:field, Field.create!(
      :name => "Name",
      :venue => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
