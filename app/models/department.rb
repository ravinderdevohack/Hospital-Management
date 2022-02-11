class Department < ApplicationRecord
  has_many :employees
  has_many :appointments

  validates :name, format: { with: /\A[A-z]+\z/}

end
