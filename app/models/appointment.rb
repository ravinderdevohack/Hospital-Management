class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :department
end
