FactoryBot.define do
  factory :board do
    name {Faker::Name.name}
    association:user
  end
end
