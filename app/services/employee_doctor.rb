class EmployeeDoctor
  def initialize(symptoms)
    @symptoms = symptoms
  end

  def find_doctor
    if (@symptoms == 'fever') || (@symptoms == 'cold')
       @specialist = "General Practitioner"
    elsif @symptoms == 'dentist'
       @specialist = "Dentist"
    elsif @symptoms == 'pregnancy'
       @specialist = "OB/GYN"
    elsif @symptoms == 'mental_health'
       @specialist = "Psychiatrist"
    end
    # debugger

    Employee.where(employee_type:'doctor', specialist:"#{@specialist}").pluck(:id, :name)

  end
end
