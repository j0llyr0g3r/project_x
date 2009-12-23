#require 'action_controller/test_process'

Factory.define :user do |u|
  u.username { Random.firstname + '_' + Random.lastname }
  u.email  { Random.email }
  u.password Random.alphanumeric
  u.password_confirmation { |f| f.password }
  u.first_name  { Random.firstname }
  u.last_name   { Random.lastname }
end
