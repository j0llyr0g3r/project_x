admin_user = Factory.create(:user, :username => 'admin', :password => 'admin')
tester_user = Factory.create(:user, :username => 'tester', :password => 'tester')

admin_user.leaderships << Factory.create(:idea, :title => 'flashmob in front of the albanian embassy')
admin_user.leaderships << Factory.create(:idea, :title => 'thai-chi in central park')
tester_user.leaderships << Factory.create(:idea, :title => 'movie production in berlin, friedrichshain')
tester_user.leaderships << Factory.create(:idea, :title => 'hard core punk band')
