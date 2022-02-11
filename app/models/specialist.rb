class Specialist < ApplicationRecord
  has_many :syndromes

  has_many :employees_specialists
  has_many :employees, through: :employees_specialists

  validates :name, format: { with: /\A[A-z]+\z/}
end
