class PatientsController < ApplicationController
  def index
    @patients = Patient.all.order(:id)
  end

  def new
    @action = 'new'
    @patient = Patient.new()
  end

  def create
    @patient = current_user.patients.new(patient_params) if user_signed_in?
    @patient = Patient.new(patient_params) if employee_signed_in?
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
    @patient = current_user.patients.find(params[:id]) if user_signed_in?
    @patient = Patient.find(params[:id]) if employee_signed_in?

    if @patient.update(patient_params)
      redirect_to patients_path
    else
      render 'edit'
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
  end

  def doctor
    @doctor_id = Syndrome.find(params[:syndrome]).specialist.employees.pluck(:id)
    # debugger
    respond_to do |format|
      format.json{render json: @doctor_id[0].to_json}
    end
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :age, :sex, :phone_number, :email, :address, :diseases, :ward_id, :employee_id, :addmit_date,:discharge_date)
  end
end
