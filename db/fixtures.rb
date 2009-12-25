Factory.create(:user, :username => 'admin', :password => 'admin')
Factory.create(:user, :username => 'tester', :password => 'tester')

5.times do
  Factory.create(:idea)
end