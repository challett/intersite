class SchoolsController < ApplicationController
  def new
    @school = school.new
  end
  
  def index
    @schools = school.all
  end
  
  def create
    @school = @user.schools.create(params[:school].permit(:name))
  end
  
  def destroy
    @school = school.find(params[:id])
    @school.destroy
    redirect_to schools_path
  end
end
