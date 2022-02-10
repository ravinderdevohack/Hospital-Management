class SpecialistsController < ApplicationController
  def index
    @specialists = Specialist.all.order(:id)
  end

  def new
  end

  def create
  end

  def destroy
  end
end
