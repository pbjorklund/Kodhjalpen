# encoding: utf-8

FactoryGirl.define do
  factory :charity do
    name "Kodhjalpen"
    city "Göteborg"
    mission "Hjälpa välgörenhet"
    needs_help_with "Utveckling, design, aktivism"
    after(:create) { |charity|
      charity.user_auth = FactoryGirl.create(:user_auth, email: "kodhjalpen@gmail.com")
    }
  end
end

FactoryGirl.define do
  factory :second_charity, class: Charity do
    name "Kodhjalpen 2"
    city "Göteborg"
    mission "Hjälpa välgörenhet"
    needs_help_with "Utveckling, design, aktivism"
    after(:create) { |charity|
      auth = FactoryGirl.create(:user_auth, email: "kodhjalpen2@gmail.com")
      charity.user_auth = auth
    }
  end
end
