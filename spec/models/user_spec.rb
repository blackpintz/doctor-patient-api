require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:appointments).dependent(:destroy) }
    it { should have_many(:physicians).through(:appointments) }
  end
end
