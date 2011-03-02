# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Editar Ativos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz editar um ativo já cadastrado
} do

  scenario "Acessando ativo" do
    asset = Factory.create(:valid_asset)
    visit assets_path
    click_link "Editar"
    current_path.should == "/assets/#{asset.id}/edit"
    within("form#edit_asset_#{asset.id}") do
      find_field("Código").value.should == asset.code.to_s
      find_field("Nome").value.should == asset.name
      find_field("Marca").value.should == asset.brand
      find_field("Modelo").value.should == asset.model
      page.should have_checked_field(asset.status)
      find_field("Valor de Compra").value.should == asset.buy_price.to_s
      find_field("Local").value.should == asset.location_id.to_s
      find_field("Tags").value.should == asset.tag_list.to_s
    
      page.should have_button("Salvar alterações")
    end
  end
   
end
