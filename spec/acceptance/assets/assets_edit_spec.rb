# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Editar Ativos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz editar um ativo já cadastrado
} do

  scenario "Acessando ativo" do
    asset = Factory.create(:valid_asset)
    visit "/assets/#{asset.to_param}/edit"
    # find_field("Código").should have_content(asset.code.to_s)
    # find_field("Nome").should have_content(asset.name)
    page.should have_button("Salvar alterações")
  end
   
end
