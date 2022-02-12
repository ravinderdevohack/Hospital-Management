class Patient < ApplicationRecord
  belongs_to :ward
  belongs_to :user
  belongs_to :employee
end
