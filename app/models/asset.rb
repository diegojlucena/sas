#coding: utf-8
class Asset < ActiveRecord::Base
  validates :code, :presence => true, :numericality => {:greater_than => 0, :only_integer => true}
  validates :name, :presence => true
  validates :buy_price, :numericality => {:greater_than => 0, :allow_nil => true}
  validates :status, :presence => true, :inclusion => {:in => ['Danificado','Em uso','Em manutenção']}
end
