# encoding: utf-8
When /^I fill in my charity details$/ do
  fill_in "Vad heter ni?",                      with: "Hjälparna"
  fill_in "Vad gör ni?",                        with: "Vi har ett soppkök i Angered som är öppet vardagar 9-15"
  fill_in "Vad skulle ni vilja ha hjälp med?",  with: "Vi skulle behöva hjälp med att hantera frivilliga som vill jobba i verksamheten"
  fill_in "Stad",                               with: "Göteborg"
  fill_in "Epost",                              with: "hjalparna@gmail.com"
  fill_in "Lösenord",                           with: "password"
  fill_in "Upprepa lösenord",                   with: "password"

  click_on "Utför"
end

Then /^I should see "(.*?)" in the navigation$/ do |email|
  page.should have_content(email)
end
