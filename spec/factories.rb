FactoryBot.define do
  factory :shelter do
    city {'Portland'}
  end
  factory :animal do
    name {'Doggy'}
    shelter_id {1}
  end
end
