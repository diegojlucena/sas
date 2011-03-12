require 'spec_helper'

describe "assets/new.html.erb" do
  before(:each) do
    assign(:asset, stub_model(Asset,
      :code => 1,
      :name => "MyString",
      :brand => "MyString",
      :model => "MyString",
      :buy_price => "9.99",
      :status => "Em Uso"
    ).as_new_record)
  end

  it "renders new asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assets_path, :method => "post" do
      assert_select "input#asset_code", :name => "asset[code]"
      assert_select "input#asset_name", :name => "asset[name]"
      assert_select "input#asset_brand", :name => "asset[brand]"
      assert_select "input#asset_model", :name => "asset[model]"
      assert_select "input#asset_status_danificado", :name => "asset[status]"
      assert_select "input#asset_status_em_uso", :name => "asset[status]"
      assert_select "input#asset_status_em_manutenção", :name => "asset[status]" 
      assert_select "select#asset_location_id", :name => "asset[location_id]"
      assert_select "input#asset_buy_price", :name => "asset[buy_price]"
      assert_select "input#asset_tag_list", :name => "asset[tag_list]"
    end
  end
end
