require 'spec_helper'

describe "assets/edit.html.erb" do
  before(:each) do
    @asset = assign(:asset, stub_model(Asset,
      :code => 1,
      :name => "MyString",
      :brand => "MyString",
      :model => "MyString",
      :buy_price => "9.99"
    ))
  end

  it "renders the edit asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assets_path(@asset), :method => "post" do
      assert_select "input#asset_code", :name => "asset[code]"
      assert_select "input#asset_name", :name => "asset[name]"
      assert_select "input#asset_brand", :name => "asset[brand]"
      assert_select "input#asset_model", :name => "asset[model]"
      assert_select "input#asset_buy_price", :name => "asset[buy_price]"
    end
  end
end
