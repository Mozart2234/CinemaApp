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
require 'rails_helper'

RSpec.describe Movie do
  describe '#validations' do
    it { should validate_presence_of(:plot) }
    it { should validate_presence_of(:title) }

    it do
      should validate_numericality_of(:ranking).
        is_less_than_or_equal_to(5.0)
    end
    it do
      should validate_numericality_of(:ranking).
        is_greater_than_or_equal_to(0.0)
    end

    it do
      should validate_numericality_of(:imbd_ranking).
        is_less_than_or_equal_to(10.0)
    end
    it do
      should validate_numericality_of(:imbd_ranking).
        is_greater_than_or_equal_to(0.0)
    end
  end

  describe "#uniqueness validations" do
    subject { FactoryBot.build(:movie) }

    it do 
      should validate_uniqueness_of(:title)
    end
  end

  describe "#relationships" do
    it { should have_one_attached(:poster) }
  end
end
