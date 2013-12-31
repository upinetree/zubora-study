# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense_category do
    sequence(:name){|n| "Category#{n}"}
    color { generate(:sample_color) }
  end

  sequence :sample_color do
    %w(#FF6347 #3cb371 #4169e1 #2f4f4f #ffd700).shuffle.first
  end
end
