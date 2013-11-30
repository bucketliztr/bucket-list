# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    location { Faker::Address.city }
  end

  factory :invalid_user do
  	name nil
  end
end
