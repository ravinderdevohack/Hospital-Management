class Ward < ApplicationRecord
  has_many :patients, dependent: :destroy

  validates :name, format: { with: /\A[A-z]+\z/}

end
