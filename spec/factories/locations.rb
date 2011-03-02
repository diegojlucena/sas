Factory.sequence :name do |n|
  "level#{n}" 
end

Factory.define :root_location, :class => Location do |a|
  a.name "root"
  a.parent_id nil
end

Factory.define :valid_location, :class => Location do |a|
  a.name {Factory.next(:name)}
  a.parent {single_instances[:root_location]}
end