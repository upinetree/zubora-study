# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense_category do
    sequence(:name){|n| "Category#{n}"}
    color "#FF6347"
  end
end
