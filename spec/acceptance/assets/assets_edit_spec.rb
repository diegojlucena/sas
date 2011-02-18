# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Editar Ativos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz editar um ativo já cadastrado
} do

  scenario "Acessando ativo" do
    asset = Factory.create(:valid_asset)
    visit assets_path(asset.to_param)
    page.should have_content(asset.code)
    page.should have_content(asset.name)
    page.should have_content(asset.brand)
    page.should have_content(asset.model)
    page.should have_content(asset.buy_price)
    page.should have_content("Atualizar Ativo")
  end
   
end
