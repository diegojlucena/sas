#coding: utf-8
class Asset < ActiveRecord::Base
  acts_as_taggable
  
  validates :code, :presence => true, :numericality => {:greater_than => 0, :only_integer => true}
  validates :name, :presence => true
  validates :buy_price, :numericality => {:greater_than => 0, :allow_nil => true}
  validates :status, :presence => true, :inclusion => {:in => ['Danificado','Em uso','Em manutenção']}
  
  belongs_to :location
  
  validates :location_id, :presence => true
end
