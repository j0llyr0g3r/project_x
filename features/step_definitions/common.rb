Then /^I should see the element "(.*?)"$/ do |selector|
  assert_select selector
end

Given /^I have created an account/ do
  # don't do anything here since we created a valid user in a before hook
end

Then /^I should see the edit profile page$/ do
  assert_contain("Email")
  assert_contain("First name")
  assert_contain("Last name")
end

Given /^I am logged in$/ do
  visit join_welcome_path()
  within 'form#new_user_session' do |login_form|
    login_form.fill_in("user_session_username", :with => 'tester')
    login_form.fill_in("user_session_password", :with => 'tester')
    login_form.click_button('user_session_submit')
  end
end

When /^I log in$/ do
  within 'form#new_user_session' do |login_form|
    login_form.fill_in("user_session_username", :with => 'tester')
    login_form.fill_in("user_session_password", :with => 'tester')
    login_form.click_button('user_session_submit')
  end
end

When /^I have created ideas$/ do
  # do nothing since we created ideas for the standard user in a before-hook
end

Then /^I should see my updated profile$/ do
  response.should contain("Kubrick")
end