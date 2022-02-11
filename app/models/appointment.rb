class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :user
  has_many :doctor_slots, dependent: :destroy

  # validates :name, format: {with: /\A[A-Za-z]{3,}\z/, message:' must be greater than 3 character'}
  # validates :phone_number, format: {with: /\A[0-9]{10}\z/, message: ' must be present'}
  # validates :email, format: {with: /\A\w[\w+.\-_]+@(gmail).(com)z/, message: 'must be valid '}
  # validates :age, format: {with: /\A[0-9]{1,3}\z/, message: ' must be of 10 digits'}
  # validates :date ,format: {with: /\A^[\d+-]+\z/}
  # validates :time ,format: {with: /\A^[\d+-]+\z/}
  # validates :symptoms, format: {with: /\A[A-z]+\z/}



  # enum symptoms: {mental_health:0, cold:1, fever: 2, dentist:3, pregnancy:4}
end
