# encoding: utf-8
When /^I fill in my developer details$/ do
  fill_in "Förnamn",           with: "Patrik"
  fill_in "Efternamn",         with: "Björklund"
  fill_in "Sysselsättning",    with: "Konsult"
  fill_in "Stad",              with: "Göteborg"
  fill_in "Epost",             with: "p.bjorklund@gmail.com"
  fill_in "Lösenord",          with: "password"
  fill_in "Upprepa lösenord",  with: "password"

  click_on "Utför"
end

Then /^I should see my email in the navigation$/ do
  page.should have_content("p.bjorklund@gmail.com")
end

Then /^I should see a (.+) message$/ do |type|
  xpath = "//div[contains(@class, '#{type}')]"
  page.should have_xpath(xpath)
end
