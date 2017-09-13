FactoryGirl.define do
  factory :sushi do
    name "Test Sushi"
    price 12.34
    description "Sushi is gross"
    user
  end
end
