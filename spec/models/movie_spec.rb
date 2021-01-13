require 'rails_helper'

RSpec.describe Movie do
  describe '#validations' do
    it { should validate_presence_of(:plot) }
    it { should validate_presence_of(:title) }

  end
end
