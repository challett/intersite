class LocationsController < ApplicationController
  def new
    @location = Location.new
  end
  
  def index
    @locations = Location.all
  end
  
  def create
    @location = Location.create(location_params)
    redirect_to locations_path
  end
  
  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end
  
  private
      def location_params
      params.require(:location).permit(:name)
    end
end
