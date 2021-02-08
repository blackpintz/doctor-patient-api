require 'rails_helper'

RSpec.describe Physician, type: :model do
    describe 'associations' do
         it { should have_many(:appointments)}
         it { should have_many(:patients).through(:appointments).source(:user) }
    end
end