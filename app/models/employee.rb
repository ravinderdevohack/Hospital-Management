class Employee < ApplicationRecord
  devise :database_authenticatable,  :recoverable, :rememberable


  # enum employee_type: {nurse:0, doctor:1, admin:2}
end
