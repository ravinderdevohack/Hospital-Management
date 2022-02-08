class PatientsController < ApplicationController
  def index
    @patients = Patient.all.order(:id)
  end

  def new
    @action = 'new'
    @patient = Patient.new()
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save!
      redirect_to patients_path
    else
      render 'new'
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @action = 'edit'
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patients_path
    else
      render 'edit'
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    

  end

  private
  def patient_params
    params.require(:patient).permit(:name, :age, :sex, :phone_number, :email, :address, :diseases, :ward_id, :employee_id, :addmit_date,:discharge_date)
  end
end
