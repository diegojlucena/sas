# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Exibir ativo", %q{
  Para gerenciar os ativos
  Eu quero ser capaz de visualizar todas as informações de cada ativo
} do
  
  scenario "Exibindo Ativo" do
    asset = Factory.create(:valid_asset)
    visit assets_path(asset)
    page.should have_content(asset.name)
    page.should have_content(asset.code.to_s)
    page.should have_content(asset.brand)
    page.should have_content(asset.model)
    page.should have_content(asset.location.name)
  end
  
end