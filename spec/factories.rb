Factory.define :collaboration do |u|
  u.association :user
  u.association :idea
end

Factory.define :idea do |i|
  i.title { Random.firstname + '_' + Random.lastname }
  i.description  { Random.paragraphs }
end

Factory.define :inspiration do |u|
  u.association :user
  u.association :idea
end

Factory.define :user do |u|
  u.username { Random.firstname + '_' + Random.lastname }
  u.email  { Random.email }
  u.password Random.alphanumeric
  u.password_confirmation { |f| f.password }
  u.first_name  { Random.firstname }
  u.last_name   { Random.lastname }
end