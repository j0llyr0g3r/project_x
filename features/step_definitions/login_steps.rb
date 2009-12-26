# Why do I do that here instead of using something like this:
#   When I fill in "Username" with "admin"
#   When I fill in "Username" with "admin"
# in my login-feature?
# The problem is, that there are two forms on the signup-page:
# The signup-form and the login-form. Both have a Username-field (and password)
# so cucumber fills out the Username / password in the signup-form and then hits "Login"
When /^I fill in the login form with valid credentials$/ do
  fill_in "user_session_username", :with => "tester"
  fill_in "user_session_password", :with => "tester"
end
