# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Novos de Ativos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz acessar uma pagina para criar um novo ativo
} do

  scenario "Acessando novo ativo" do
    visit assets_path("new")
    page.should have_content("Código")
    page.should have_content("Nome")
    page.should have_content("Marca")
    page.should have_content("Modelo")
    page.should have_content("Valor")
    page.should have_content("Criar Ativo")
  end
   
end
