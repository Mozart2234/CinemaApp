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
end
