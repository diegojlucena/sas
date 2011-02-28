#coding: utf-8
class Location < ActiveRecord::Base
  acts_as_nested_set
  validates :name, :presence => true, :uniqueness => {:scope => :parent_id, :allow_nil => true}
end