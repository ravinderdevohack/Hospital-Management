class DepartmentsController < ApplicationController
  def index
    @departments = Department.all.order(:id)
  end

  def new
    @action = 'new'
    @department = Department.new()
  end

  def create 
    @department = Department.new(department_params)
    if @department.save!
      redirect_to departments_path
    else
      render 'new'
    end
  end

  def edit
    @action = 'edit'
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
    if @department.update(department_params)
      redirect_to departments_path
    else
      render 'new'
    end
   
  end

  private
  def department_params
    params.require(:department).permit(:name)
  end
end
