# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Lista de Ativos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz de exibir uma listagem de ativos
} do

  scenario "Lista de Ativos" do
    asset = Factory.create(:valid_asset)
    asset2 = Factory.create(:valid_asset)
    visit assets_path
    page.should have_content(asset.name)
    page.should have_content(asset.code.to_s)
    page.should have_content(asset.status)
    page.should have_content(asset.tag_list.to_s)
    page.should have_content(asset2.name)
    page.should have_content(asset2.code.to_s)
    page.should have_content(asset2.status)
    page.should have_content(asset2.tag_list.to_s)
  end
   
end
