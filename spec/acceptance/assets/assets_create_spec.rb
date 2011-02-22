# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature "Criar Ativos", %q{
  Para gerenciar os Ativos
  Eu quero ser capaz de criar de ativos
} do
  
  scenario "usuário valido" do
    visit assets_path("new")
    
    fill_in "Código", :with => 1234
    fill_in "Nome", :with => "Maquina Fotográfica"
    fill_in "Marca", :with => "vivicam"
    fill_in "Modelo", :with => "digital 5024"
    fill_in "Valor", :with => 125.01
    choose "Em manutenção" 
    
    click_button 'Criar Ativo'
    
    current_path.should match %r{/assets/\d+}
  end
  
  scenario "usuário inválido" do
    visit assets_path("new")
    
    fill_in "Código", :with => -1234
    fill_in "Nome", :with => ""
    fill_in "Marca", :with => ""
    fill_in "Modelo", :with => ""
    fill_in "Valor", :with => -125.01
    
    click_button 'Criar Ativo'
    puts current_path
    current_path.should match "/assets"
  end
  
end