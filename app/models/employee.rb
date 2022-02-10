class Employee < ApplicationRecord
    include ActiveModel::Model

  devise :database_authenticatable,  :recoverable, :rememberable

  has_many :employees_specialists
  has_many :specialist, through: :employees_specialists

  has_many :doctor_slots, dependent: :destroy
  has_many :slots ,dependent: :destroy

  belongs_to :department
  has_many :patients
  has_many :appointments

  mount_uploader :avatar, AvatarUploader
  # enum employee_type: {nurse:0, doctor:1, admin:2}

  def self.check_availability(doctor_id, appointment_date, appointment_time)
    @doctor_id = doctor_id
    @appointment_date = appointment_date
    @appointment_time = appointment_time

    self.joins(:appointments).where('employee_id =?', @doctor_id).where('date =?', @appointment_date).present?

    # self.joins(:appointments).where('employee_id =?', @doctor_id)

    # if self.joins(:doctor_slots).find_by('employee_id =?', @doctor_id).doctor_slots[0].date.nil?
    #   DoctorSlot.find_by(employee_id: @doctor_id).update(date: @appointment_date)
    #   DoctorSlot.find_by(employee_id: @doctor_id).update(slot1: @appointment_time)
    # elsif self.joins(:doctor_slots).find_by('employee_id =?', @doctor_id).doctor_slots[0].date.strftime("%Y-%m-%d") == @appointment_date

    # else
    #   for @i in 1..8 do
    #     if DoctorSlot.find_by('employee_id =?', @doctor_id).slot@i.nil?
    #       DoctorSlot.find_by('employee_id =?', @doctor_id).update("slot'#{@i}' =?", @appointment_time)
    #     end
    #   end

    # end
    # debugger

    # date = Employee.find(@doctor_id).appointments.pluck(:date)
    # count = date.count
    # while count > 0
    #   if ((date[count].present?) && (date(count).strftime("%Y-%m-%d") == appointment_date))
    #     @doctor_id = nil
    #   end
    #   count -= 1  
    # end
  end

end
