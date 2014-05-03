class SchoolsController < ApplicationController
  def new
    @school = school.new
  end
  
  def index
    @schools = school.all
  end
  
  def create
    @school = @user.schools.create(school_params)
  end
  
  def destroy
    @school = school.find(params[:id])
    @school.destroy
    redirect_to schools_path
  end
  
private
  def school_params
    params.require(:school).permit(:name) 
  end
end
