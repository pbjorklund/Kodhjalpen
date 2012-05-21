# encoding: utf-8

When /^I click on "(.*?)"$/ do |link|
  click_link link
end

When /^I fill in my details$/ do
  fill_in "First name",             with: "Patrik"
  fill_in "Last name",              with: "Björklund"
  fill_in "Occupation",             with: "SharePoint Consultant"
  fill_in "City",                   with: "Göteborg"
  fill_in "Email",                  with: "p.bjorklund@gmail.com"
  fill_in "Password",               with: "password"
  fill_in "Password confirmation",  with: "password"

  click_on "Börja göra nytta"
end

Then /^I should see my name in the navigation$/ do
  page.should have_content("Patrik Björklund")
end

Then /^I should see a (.+) message$/ do |type|
  xpath = "//div[contains(@class, '#{type}')]"
  page.should have_xpath(xpath)
end
