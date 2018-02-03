FactoryBot.define do
  factory :admin_user do
    email "admin@example.com" 
    id 1
    password "password"
    password_confirmation "password"
  end
end

FactoryBot.define do
  factory :admin_user_2 do
    email "admin@example2.com" 
    id 2
    password "password2"
    password_confirmation "password2"
  end
end
