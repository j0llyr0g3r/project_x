Before do
  @std_user = Factory(:user, :username => 'tester', :password => 'tester')
  @std_idea = Factory(:idea)
  @std_user.leaderships << @std_idea
  3.times do
    Factory(:idea)
  end
end
