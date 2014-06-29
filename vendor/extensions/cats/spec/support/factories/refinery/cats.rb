
FactoryGirl.define do
  factory :cat, :class => Refinery::Cats::Cat do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

