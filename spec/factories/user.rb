# encoding: utf-8
FactoryGirl.define do
  factory :user do
    email "p.bjorklund@gmail.com"
    password "password"
    password_confirmation "password"
  end
end
