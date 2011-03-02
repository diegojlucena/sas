# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Novos de Ativos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz acessar uma pagina para criar um novo ativo
} do

  scenario "Acessando novo ativo" do
    visit assets_path("new")
    page.should have_field("Código")
    page.should have_field("Nome")
    page.should have_field("Marca")
    page.should have_field("Modelo")
    page.should have_field("Valor")
    page.should have_select("Local")
    page.should have_field("Tags")
    page.should have_button("Criar Ativo")
  end
   
end
