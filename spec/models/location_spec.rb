#coding: utf-8
require 'spec_helper'

describe Location do
  # l = Factory.create(:root_location)
  
  should_validate_presence_of :name
  # l = Location.create!(:name => 'root')
  #should_validate_uniqueness_of :name, :scope => :parent_id, :allow_nil =>true
  
  should_have_many :assets
  
end