Given /^I am on the startpage$/ do
  visit '/'
end

Then /^I should see "(.*?)"$/ do |content|
  page.should have_content(content)
end
