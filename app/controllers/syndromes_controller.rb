class SyndromesController < ApplicationController
  def index
    @syndromes = Syndrome.all.order(:id)
  end

  def new
  end

  def create
  end

  def destroy
  end
end
