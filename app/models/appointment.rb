class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :user
  belongs_to :department
end
