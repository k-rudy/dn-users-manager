require 'factory_girl'

FactoryGirl.define do
  
  factory :user_permission do
    association :user
    association :permission
  end
  
  factory :role_permission do
    association :role
    association :permission
  end
  
  factory :permission do
    ignore do
      user nil
      role nil
    end
    
    name 'View Users'
    
    after(:create) do |permission, evaluator|
      permission.users << evaluator.user if evaluator.user
      permission.roles << evaluator.role if evaluator.role
    end
  end
end