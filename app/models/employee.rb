class Employee < ApplicationRecord
  devise :database_authenticatable,  :recoverable, :rememberable

  belongs_to :department
  has_many :patients
  has_many :appointments

  mount_uploader :avatar, AvatarUploader
  # enum employee_type: {nurse:0, doctor:1, admin:2}
end
