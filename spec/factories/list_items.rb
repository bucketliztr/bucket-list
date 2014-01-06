# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list_item do
    content "Bucket list item"
    user_id nil
  end
end
