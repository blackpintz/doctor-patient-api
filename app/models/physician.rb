class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments, source: :user
end
