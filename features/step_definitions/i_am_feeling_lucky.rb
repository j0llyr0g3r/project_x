Then /^I should see a table with ideas from other users$/ do
  assert_select('table') do
    assert_contain('Title')
    assert_contain('Description')
  end
end
