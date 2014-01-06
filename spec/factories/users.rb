# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    location { Faker::Address.city }
    password "password"
    password_confirmation "password"
  end

  factory :invalid_user do
  	email nil
  end
end
