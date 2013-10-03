# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :username do |n|
    "Test User #{n}"
  end

  sequence :email do |n|
    "email#{n}@example.com"
  end

  factory :user do
    username
    email
    password 'password'
    password_confirmation 'password'
  end
end
