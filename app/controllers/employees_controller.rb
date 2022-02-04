class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.order(:id)
  end

  def new
    @action = 'new'
    @employee = Employee.new()
  end

  def create
    @employee = Employee.new(employee_params)
    # debugger
    if @employee.save!
      redirect_to employees_path
    else
      render new
    end
  end

  def edit
    @action = 'edit'
    @employee = Employee.new()
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def show_employee
  end


  def doctor
    @employees = Employee.where(employee_type:'doctor')
  end

  private
  def employee_params
    params.require(:employee).permit(:employee_type, :name, :qualification, :department, :specialist, :phone_number, :email, :address, :aadhar_number, :salary, :joining_date, :resignation_date)
  end
end
