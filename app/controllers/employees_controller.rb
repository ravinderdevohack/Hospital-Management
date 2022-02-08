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
      render 'new'
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @action = 'edit'
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    # debugger
    if current_employee.employee_type == 'admin'
        debugger
      if @employee.update(employee_params)
        redirect_to employees_path
      else
        render 'edit'
      end   
    else
      debugger
      if @employee.update(employee_params)
        redirect_to employee_path(current_employee[:id])
      else
        render 'edit_profile'
      end
    end

  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.update(active:false)

    redirect_to employees_path
  end

  def doctor
    @employees = Employee.where(employee_type:'doctor')
  end

  def edit_profile
    @employee = Employee.find(params[:id])
  end

  private

  def employee_params
    params.require(:employee).permit(:employee_type, :name, :qualification, :department_id, :specialist, :phone_number, :email, :address, :aadhar_number, :salary, :joining_date, :resignation_date, :bio, :password, :avatar)
  end

end
