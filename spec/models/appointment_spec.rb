require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:city) }
    it { should validate_length_of(:city).is_at_least(3) }
  end
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:physician) }
  end
end
