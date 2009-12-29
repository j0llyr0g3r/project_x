Then /^I should see ideas matching my search query$/ do
  assert_select('table') do
    assert_contain('Title')
    assert_contain('Description')
  end
end

When /^Sphinx has indexed my query$/ do
  Idea.stub!(:fetch).and_return([Idea.first])
end

When /^Sphinx has not indexed my query$/ do
  Idea.stub!(:fetch).and_return([])
end
