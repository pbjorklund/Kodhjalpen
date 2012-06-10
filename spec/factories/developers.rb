# encoding: utf-8

FactoryGirl.define do
  factory :developer do
    first_name "Patrik"
    last_name "Björklund"
    occupation "Konsult"
    city "Göteborg"
    after(:create) { |dev|
      dev.user_auth = FactoryGirl.create(:user_auth)
    }
  end
end

FactoryGirl.define do
  factory :admin_developer, class: Developer do
    first_name "Admin"
    last_name "Adminson"
    occupation "Admin"
    city "Göteborg"
    after(:create) { |dev|
      dev.user_auth = FactoryGirl.create(:user_auth, email: "admin@admin.com", admin: true)
    }
  end
end

FactoryGirl.define do
  factory :second_developer, class: Developer do
    first_name "Nils"
    last_name "Eriksson"
    occupation "Terminal"
    city "Göteborg"
    after(:create) { |dev|
      dev.user_auth = FactoryGirl.create(:second_user_auth)
    }
  end
end
