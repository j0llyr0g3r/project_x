When /^I fill in correct sign up data$/ do
  password = 'abcdefg'
  fill_in "user_username", :with => Random.firstname
  fill_in "user_email", :with => Random.email
  fill_in "user_password", :with => password
  fill_in "user_password_confirmation", :with => password
end
