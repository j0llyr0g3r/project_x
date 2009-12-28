Then /^I should see ideas matching my search query$/ do
  assert_select('table') do
    assert_contain('Title')
    assert_contain('Description')
  end
end
