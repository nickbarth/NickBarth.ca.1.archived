FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "Test Post #{n}" }
    body "Test Post Body Text"
    category
  end
  
  factory :category do
    sequence(:title) { |n| "Test Category #{n}" }
  end
  
  factory :page do
    sequence(:name) { |n| "Test Page #{n}" }
    body "Text Page Body Text"
  end
end
