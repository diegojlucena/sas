# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Novos de Ativos Multiplos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz acessar uma pagina para criar multiplos ativos de uma vez
} do

  scenario "Acessando novo ativo" do
    visit assets_path("new_multiple")
    page.should have_field("Código Inicial")
    page.should have_field("Código Final")
    page.should have_field("Nome")
    page.should have_field("Marca")
    page.should have_field("Modelo")
    page.should have_field("Valor")
    page.should have_checked_field("Em uso")
    page.should have_unchecked_field("Em manutenção")
    page.should have_unchecked_field("Danificado")
    page.should have_select("Local")
    page.should have_field("Tags")
    page.should have_button("Criar Ativos")
  end
   
end
