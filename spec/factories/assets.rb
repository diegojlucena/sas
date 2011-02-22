#coding: utf-8
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
end

Factory.define :invalid_asset, :class => Asset do |a|
end