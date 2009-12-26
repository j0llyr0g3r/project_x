admin_user = Factory.create(:user, :username => 'admin', :password => 'admin')
tester_user = Factory.create(:user, :username => 'tester', :password => 'tester')

3.times do
  admin_user.leaderships << Factory.create(:idea)
  tester_user.leaderships << Factory.create(:idea)
end