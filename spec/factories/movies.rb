FactoryBot.define do
  factory :movie do
    budget { Faker::Commerce.price }
    director { Faker::Name.name  }
    imbd_ranking { Faker::Number.number(from: 0.0, to: 10.0) }
    plot { Faker::Movie.quote }
    poster { }
    ranking { Faker::Number.between(from: 0.0, to: 5.0).round(1) }
    revenue { Faker::Commerce.price }
    running_time { Faker::Number.between(from: 30.0, to: 120.0 ).round(2) }
    title { Faker::Movie.title }
  end
end
