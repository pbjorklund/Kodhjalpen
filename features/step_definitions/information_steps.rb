# encoding: utf-8
Then /^I should see a list of developers$/ do
  page.should have_xpath('//table/tbody/tr/td')
  page.should have_content("Göteborg")
end

Then /^I should see a list of charities/ do
  page.should have_xpath('//table/tbody/tr/td')
  page.should have_content("Göteborg")
end
