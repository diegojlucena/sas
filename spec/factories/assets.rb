#coding: utf-8

saved_single_instances = {}
#Find or create the model instance
single_instances = lambda do |factory_key|
  begin
    saved_single_instances[factory_key].reload
  rescue NoMethodError, ActiveRecord::RecordNotFound  
    #was never created (is nil) or was cleared from db
    saved_single_instances[factory_key] = Factory.create(factory_key)  #recreate
  end

  return saved_single_instances[factory_key]
end


Factory.sequence :code do |n|
  n 
end

Factory.sequence :name do |n|
  "asset#{n}" 
end

Factory.define :valid_asset, :class => Asset do |a|
  a.code {Factory.next(:code)}
  a.name {Factory.next(:name)}
  a.brand "brand"
  a.model "model"
  a.status "Em manutenção"
  a.buy_price 9.99
  a.location {single_instances[:root_location]}
end

Factory.define :invalid_asset, :class => Asset do |a|
end