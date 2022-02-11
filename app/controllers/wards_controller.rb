class WardsController < ApplicationController
  def index
    @wards = Ward.all.order(:id)
  end

  def new
    @action = 'new'
    @ward = Ward.new()
  end

  def create 
    @ward = Ward.new(ward_params)
    if @ward.save!
      redirect_to wards_path
    else
      render 'new'
    end
  end

  def edit
    @action = 'edit'
    @ward = Ward.find(params[:id])
  end

  def update
    @ward = Ward.find(params[:id])
    if @ward.update(ward_params)
      redirect_to wards_path
    else
      render 'edit'
    end
  end


  private
  def ward_params
    params.require(:ward).permit(:name)
  end
end
