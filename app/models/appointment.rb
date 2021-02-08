class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :physician
  validates :city, presence: true, length: { minimum: 3 }
end
