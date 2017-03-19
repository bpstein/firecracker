FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "test#{n}@example.com"
    end

    name 'John Smith'
    password '12345678'
    password_confirmation '12345678'

    factory :google_user do
      provider 'Google'
      uid '1234'
    end

    factory :facebook_user do 
      provider 'Facebook'
      uid '4321'
    end
  end
end