# encoding: utf-8
Given /^I am on the "(.*?)" page$/ do |page|
  [Cms::Site, Cms::Page, Cms::Layout].map(&:delete_all)
  FactoryGirl.create(:site_with_page)
  visit page
end

When /^I click on "(.*?)"$/ do |link|
  click_link link
end

When /^I fill in my details$/ do
  fill_in "Förnamn",           with: "Patrik"
  fill_in "Efternamn",         with: "Björklund"
  fill_in "Sysselsättning",    with: "Konsult"
  fill_in "Stad",              with: "Göteborg"
  fill_in "Epost",             with: "p.bjorklund@gmail.com"
  fill_in "Lösenord",          with: "password"
  fill_in "Upprepa lösenord",  with: "password"

  click_on "Börja göra nytta"
end

Then /^I should see my email in the navigation$/ do
  page.should have_content("p.bjorklund@gmail.com")
end

Then /^I should see a (.+) message$/ do |type|
  xpath = "//div[contains(@class, '#{type}')]"
  page.should have_xpath(xpath)
end
