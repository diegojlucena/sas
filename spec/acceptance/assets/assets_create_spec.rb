# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Criar Ativos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz de criar de ativos
} do
  
  scenario "validos" do
    Factory.create(:root_location)
    visit assets_path
    click_link "Novo Ativo"
    
    fill_in "Código", :with => 1234
    fill_in "Nome", :with => "Maquina Fotográfica"
    fill_in "Marca", :with => "vivicam"
    fill_in "Modelo", :with => "digital 5024"
    fill_in "Valor", :with => 125.01
    choose "Em manutenção"
    select "root"
    fill_in "Tags", :with => 'tag1, tag2'
    
    click_button 'Criar Ativo'
    
    current_path.should match %r{/assets/\d+}
    page.should have_content("Ativo criado com sucesso.")
  end
  
  scenario "inválidos" do
    visit assets_path
    click_link "Novo Ativo"
    
    fill_in "Código", :with => -1234
    fill_in "Nome", :with => ""
    fill_in "Marca", :with => ""
    fill_in "Modelo", :with => ""
    fill_in "Valor", :with => -125.01
    
    click_button 'Criar Ativo'
    current_path.should match "/assets"
    page.should have_content("Foram encontrados alguns erros, por favor dê uma olhada:")
  end
  
end