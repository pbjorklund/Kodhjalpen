# encoding: utf-8

FactoryGirl.define do
  factory :developer do
    first_name "Patrik"
    last_name "Björklund"
    occupation "Konsult"
    city "Göteborg"
    after(:create) { |dev|
      dev.user_auth = FactoryGirl.build(:user_auth)
    }
  end
end
