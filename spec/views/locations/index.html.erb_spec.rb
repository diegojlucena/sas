require 'spec_helper'

describe "locations/index.html.erb" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :id => 1,
        :name => "Root",
        :parent_id => nil
      ),
      stub_model(Location,
        :name => "Level 2",
        :parent_id => 1
      )
    ])
  end

  it "renders a list of assets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Root", :count => 1
    assert_select "tr>td", :text => "Level 2", :count => 1
  end
end
