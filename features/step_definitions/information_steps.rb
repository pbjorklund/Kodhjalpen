# encoding: utf-8
Given /^I am on the startpage$/ do
  [Cms::Site, Cms::Page, Cms::Layout].map(&:delete_all)
  FactoryGirl.create(:site_with_page)
  visit '/'
end

Then /^I should see "(.*?)"$/ do |content|
  page.should have_content(content)
end

Given /^there are developers in the database$/ do
  FactoryGirl.create(:developer)
end

Given /^there are charities in the database$/ do
  FactoryGirl.create(:charity)
end

Then /^I should see a list of developers$/ do
  page.should have_xpath('//table/tbody/tr/td')
  page.should have_content("Göteborg")
end

Then /^I should see a list of charities/ do
  page.should have_xpath('//table/tbody/tr/td')
  page.should have_content("Göteborg")
end
