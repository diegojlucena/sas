require 'spec_helper'

describe Asset do
  should_validate_presence_of :code, :name
  should_validate_numericality_of :code, :only_integer => true, :greater_than => 0
  should_validate_numericality_of :buy_price, :only_integer => false, :greater_than => 0, :allow_nil => true
end
