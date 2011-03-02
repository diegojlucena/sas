#coding: utf-8
require 'spec_helper'

describe Asset do
  should_validate_presence_of :code, :name, :status
  should_validate_numericality_of :code, :only_integer => true, :greater_than => 0
  should_validate_numericality_of :buy_price, :only_integer => false, :greater_than => 0, :allow_nil => true
  should_validate_inclusion_of :status, :in => ['Danificado','Em uso','Em manutenção']
  
  should_belong_to :location
  
  it "deve responder ao metodo tagged_with" do
    Asset.should respond_to(:tagged_with)
  end
end
