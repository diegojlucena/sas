require 'spec_helper'

describe "assets/index.html.erb" do
  before(:each) do
    assign(:assets, [
      stub_model(Asset,
        :code => 1,
        :name => "Name",
        :brand => "Brand",
        :model => "Model",
        :status => "Em Uso",
        :buy_price => "9.99"
      ),
      stub_model(Asset,
        :code => 2,
        :name => "Name",
        :brand => "Brand",
        :model => "Model",
        :status => "Em Uso",
        :buy_price => "9.99"
      )
    ])
  end

  it "renders a list of assets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 1
    assert_select "tr>td", :text => 2.to_s, :count => 1
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Em Uso".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "R$ 9,99".to_s, :count => 2
  end
end
