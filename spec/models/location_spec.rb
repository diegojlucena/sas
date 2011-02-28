#coding: utf-8
require 'spec_helper'

describe Location do
  should_validate_presence_of :name
  Location.create :name => 'root'
  should_validate_uniqueness_of :name, :scope => :parent_id, :allow_nil =>true
end