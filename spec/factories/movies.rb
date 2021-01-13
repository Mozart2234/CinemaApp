# == Schema Information
#
# Table name: movies
#
#  id           :bigint           not null, primary key
#  budget       :decimal(, )      default(0.0)
#  director     :string
#  imbd_ranking :float            default(0.0)
#  plot         :string           not null
#  poster       :string
#  ranking      :float            default(0.0)
#  revenue      :decimal(, )      default(0.0)
#  running_time :string
#  title        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_movies_on_title  (title) UNIQUE
#
FactoryBot.define do
  factory :movie do
    budget { Faker::Commerce.price }
    director { Faker::Name.name  }
    imbd_ranking { Faker::Number.between(from: 0.0, to: 10.0).round(1) }
    plot { Faker::Movie.quote }
    poster { }
    ranking { Faker::Number.between(from: 0.0, to: 5.0).round(1) }
    revenue { Faker::Commerce.price }
    running_time { Faker::Number.between(from: 30.0, to: 120.0 ).round(2) }
    title { Faker::Movie.title }
  end
end
