class SpecialistsController < ApplicationController
  def index
    @specialists = Specialist.all.order(:id)
  end

  def new
    @action = 'new'
    @specialist = Specialist.new()
  end

  def create 
    @specialist = Specialist.new(specialist_params)
    if @specialist.save!
      redirect_to specialists_path
    else
      render 'new'
    end
  end

  def edit
    @action = 'edit'
    @specialist = Specialist.find(params[:id])
  end

  def update
    @specialist = Specialist.find(params[:id])
    if @specialist.update(specialist_params)
      redirect_to specialists_path
    else
      render 'edit'
    end
  end


  private
  def specialist_params
    params.require(:specialist).permit(:name)
  end
end
