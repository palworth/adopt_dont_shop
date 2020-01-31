class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def new
  end

  def create
    Shelter.new(shelter_params)

    redirect '/shelters'
  end

  private

  def shelter_params
    params.permit(:name, :address, :city, :state, :zip)
  end
end
