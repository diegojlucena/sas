require 'spec_helper'

describe "locations/new.html.erb" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "Location",
      :parent_id => nil
    ).as_new_record)
  end

  it "renders new asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path, :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "select#location_parent_id", :name => "location[parent_id]"
    end
  end
end
