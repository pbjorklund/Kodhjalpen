# encoding: utf-8
FactoryGirl.define do
  factory :user_auth do
    email "p.bjorklund@gmail.com"
    password "password"
    password_confirmation "password"
  end
end

FactoryGirl.define do
  factory :second_user_auth, class: UserAuth do
    email "ensambussterminalsoker@gmail.com"
    password "password"
    password_confirmation "password"
  end
end
