class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all.order(:id)
  end
  
  def new
    @appointment = Appointment.new()
  end
  
  def create
    @appointment = Appointment.new(appointments_params)
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
    
  private

  def appointments_params
    params.require(:appointment).permit(:name, :phone_number, :email, :doctor_id)
  end
end