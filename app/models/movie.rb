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
class Movie < ApplicationRecord
  validates :title, :plot, presence: true

end
