Then /^I should see the element "(.*?)"$/ do |selector|
  #Nokogiri::HTML(response.body).css(selector).should_not be_nil
  assert_select selector
end

Given /^I am logged in with first name Janice$/ do
  @user = Factory.create(:user, :username => 'tester', :password => 'tester', :password_confirmation => 'tester', :first_name => 'Janice')
  visit join_welcome_path()
  within 'form#new_user_session' do |login_form|
    login_form.fill_in("user_session_username", :with => 'tester')
    login_form.fill_in("user_session_password", :with => 'tester')
    login_form.click_button('user_session_submit')
  end
end

Given /^I am logged in$/ do
  @user = Factory.create(:user, :username => 'tester', :password => 'tester')
  visit join_welcome_path()
  within 'form#new_user_session' do |login_form|
    login_form.fill_in("user_session_username", :with => 'tester')
    login_form.fill_in("user_session_password", :with => 'tester')
    login_form.click_button('user_session_submit')
  end
end

Given /^I have created a user account/ do
  @user = Factory.create(:user, :username => 'tester', :password => 'tester', :password_confirmation => 'tester')
end

When /^I log in with valid credentials/ do
  visit join_welcome_path()
  within 'form#new_user_session' do |login_form|
    login_form.fill_in("user_session_username", :with => 'tester')
    login_form.fill_in("user_session_password", :with => 'tester')
    login_form.click_button('user_session_submit')
  end
end

And /^I debug$/ do
  $cust_log.debug('body:' + response.body)

end
