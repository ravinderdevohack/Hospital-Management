class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all.order(:id)
  end
end
