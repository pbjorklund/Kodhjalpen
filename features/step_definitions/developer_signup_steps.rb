# encoding: utf-8

When /^I click on "(.*?)"$/ do |link|
  click_link link
end

When /^I fill in my details$/ do
  fill_in :first_name, with: "Patrik"
  fill_in :last_name, with: "Björklund"
  fill_in :occupation, with: "SharePoint Consultant"
  fill_in :city, with: "Göteborg"
  fill_in :email, with: "p.bjorklund@gmail.com"
  click_on "Register your talent"
end
