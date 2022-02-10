class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :user
  has_many :slots




  # enum symptoms: {mental_health:0, cold:1, fever: 2, dentist:3, pregnancy:4}
end
