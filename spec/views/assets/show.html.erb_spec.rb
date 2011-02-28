require 'spec_helper'

describe "assets/show.html.erb" do
  before(:each) do
    @asset = assign(:asset, stub_model(Asset,
      :code => 1,
      :name => "Name",
      :brand => "Brand",
      :model => "Model",
      :status => "Em Uso",
      :buy_price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Brand/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model/)
    rendered.should match(/Em Uso/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
