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
class Movie < ApplicationRecord
  # Relationships 
  has_one_attached :poster
  
  # Validations
  validates :title, :plot, presence: true
  
  validates_numericality_of :ranking, 
    greater_than_or_equal_to: 0.0, 
    less_than_or_equal_to: 5.0

  validates_numericality_of :imbd_ranking,
    greater_than_or_equal_to: 0.0,
    less_than_or_equal_to: 10.0

  validates_uniqueness_of :title
end
