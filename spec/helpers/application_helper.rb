#coding: utf-8
require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the AssetsHelper. For example:
#
# describe AssetsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ApplicationHelper do
  describe "Flash Messages" do
    it "deve ser html_safe" do
      flash[:notice] = "Mensagem"
      helper.flash_messages.html_safe?.should == true
    end
    
    it "deve retornar noticias" do
      flash[:notice] = "Mensagem"
      helper.flash_messages.should == "<p class=\"flash\"><span class=\"notice\">Mensagem</span></p>" 
    end
    
    it "deve retornar string vazia quando não houver noticias" do
      helper.flash_messages.should == ""
    end
    
  end 
end