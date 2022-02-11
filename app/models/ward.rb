class Ward < ApplicationRecord
  has_many :patients

  validates :name, format: { with: /\A[A-z]+\z/}

end
