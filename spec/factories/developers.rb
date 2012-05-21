# encoding: utf-8

FactoryGirl.define do
  factory :developer do
    first_name "Patrik"
    last_name "Björklund"
    occupation "SharePoint Consultant"
    city "Gothenburg"
    email "p.bjorklund@gmail.com"
    password "password"
    password_confirmation "password"
  end
end
