Then /^I should see the element "(.*?)"$/ do |selector|
  #Nokogiri::HTML(response.body).css(selector).should_not be_nil
  assert_select selector
end

