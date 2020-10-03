FactoryBot.define do
  factory :task do
    title {Faker::Job.title}
    text {Faker::Lorem.sentence}
    inportance {Faker::Number.between(from: 1, to: 4)}
    deadline {Faker::Date.forward}
    hour {Faker::Number.between(from: 1 , to: 12)}
    check {'false'}

    association :user
    association :board
  end
end
