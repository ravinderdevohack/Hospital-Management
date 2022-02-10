class EmployeesSpecialist < ApplicationRecord
  belongs_to :employee
  belongs_to :specialist
end
