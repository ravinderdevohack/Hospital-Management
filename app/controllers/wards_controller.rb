class WardsController < ApplicationController
  def index
    @wards = Ward.all.order(:id)
  end
end
