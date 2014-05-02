class WorkplacesController < ApplicationController
  def new
    @workplace = workplace.new
  end
  
  def index
    @workplaces = workplace.all
  end
  
  def create
    @workplace = @user.workplaces.create(params[:workplace].permit(:name))
  end
  
  def destroy
    @workplace = workplace.find(params[:id])
    @workplace.destroy
    redirect_to workplaces_path
  end
end
