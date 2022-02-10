class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all.order(:id)
  end
  
  def new
    @appointment = Appointment.new()
  end
  
  def create
    @appointment = current_user.appointments.new(appointments_params)
    # debugger
    if @appointment.save!
      redirect_to appointments_path
    else
      render new
    end
  end
  
  def edit    
  end
  
  def update
  end
  
  def show
  end
  
  def destroy
  end
    

  def doctor
    @syndrome_id = params[:syndrome]
    @appointment_date = params[:date]
    @appointment_time = params[:appointment_time]
    @specialist_id = Syndrome.find(@syndrome_id).specialist.id
    @doctor_id = Specialist.find(@specialist_id).employees.pluck(:id)[0]

    @date_available  = !Employee.check_availability(@doctor_id, @appointment_date, @appointment_time)
    if !@date_available
      @doctor_id = nil
    end

    # debugger
    # respond_to do |format|
    #   format.json{render json: @doctor_id[0].to_json}
    # end
  end

  private

  def appointments_params
    params.require(:appointment).permit(:name,  :phone_number, :email, :age, :employee_id,  :date)
  end
end
