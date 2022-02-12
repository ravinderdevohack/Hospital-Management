class Employee < ApplicationRecord

  devise :database_authenticatable,  :recoverable, :rememberable

  has_many :employees_specialists
  has_many :specialist, through: :employees_specialists

  belongs_to :department
  has_many :patients, dependent: :destroy
  has_many :appointments, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
  # enum employee_type: {nurse:0, doctor:1, admin:2}


  validates :name, format: {with: /\A[A-Za-z]{3,}\z/, message:' must be greater than 3 character'}
  validates :employee_type, format: {with: /\A[A-z]+\z/}
  validates :phone_number, format: {with: /\A[0-9]{10}\z/, message: ' must be of 10 digits'}
  validates :email, format: {with: /\A\w[\w+.\-_]+@(gmail).(com)z/, message: 'enter be valid '}
  validates :aadhar_number, format: {with: /\A[0-9]{12}\z/ }, allow_blank: true
  validates :address, length: {minimum: 10}
  validates :salary, format:{with: /\A\d+\z/}
  validates :joining_date ,format: {with: /\A^[\d+-]+\z/}
  validates :password, format: {with: /.{6,}/}
  # validates :password, format: {with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}\z/, message: ' must have one upper letter, one lower letter, one digit, one special symbol and minimum length of 6 character' } 


  def self.check_availability(doctor_id, appointment_date, appointment_time)
    self.joins(:appointments).where('employee_id =?', doctor_id).where('date =?', appointment_date).where('time =?', appointment_time).present?
    # debugger

  end

end
