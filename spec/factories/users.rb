FactoryGirl.define do
  sequence :email do |n|
    "test_#{n}@test.com"
  end
  factory :user do
    email
    password "password"
    first_name "Test"
    last_name "Tester"
  end
end
