FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    'Sequence method generates sequential email addresses for users.'
    password "password"
  end
end
