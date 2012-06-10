# encoding: utf-8
Given /^That the cms is populated$/ do
  [Cms::Site, Cms::Page, Cms::Layout].map(&:delete_all)
  FactoryGirl.create(:site_with_page)
  visit '/'
end

Given /^I am logged in as an admin$/ do
  dev = FactoryGirl.create(:admin_developer)
  email = dev.user_auth.email
  password = 'password'

  visit '/auth/sign_in'
  fill_in "Epost", with: email
  fill_in "Lösenord", with: password
  click_button "Logga in"
end

Given /^I am logged in as a developer/ do
  dev = FactoryGirl.create(:developer)
  email = dev.user_auth.email
  password = 'password'

  visit '/auth/sign_in'
  fill_in "Epost", with: email
  fill_in "Lösenord", with: password
  click_button "Logga in"
end

Given /^I am logged in as a charity/ do
  charity = FactoryGirl.create(:charity)
  email = charity.user_auth.email
  password = 'password'

  visit '/auth/sign_in'
  fill_in "Epost", with: email
  fill_in "Lösenord", with: password
  click_button "Logga in"
end

Given /^I am on the startpage$/ do
  visit '/'
end

When /^I visit "(.*?)"$/ do |adress|
  visit adress
end

Given /^I am on the "(.*?)" page$/ do |page|
  visit page
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

When /^I click on "(.*?)"$/ do |link|
  click_link link
end

When /^I click on the "(.*?)" button$/ do |button|
  click_button button
end

When /^I fill in my password and password confirmation$/ do
  fill_in "Lösenord", with: "password"
  fill_in "Upprepa lösenord", with: "password"
end

When /^I change the "(.*?)" to "(.*?)"$/ do |field, value|
  fill_in field, with: value
end
