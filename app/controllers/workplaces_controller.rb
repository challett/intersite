class WorkplacesController < ApplicationController
  def new
    @workplace = workplace.new
  end
  
  def index
    @workplaces = workplace.all
  end
  
  def create
    @workplace = @user.workplaces.create(workplace_params)
  end
  
  def destroy
    @workplace = workplace.find(params[:id])
    @workplace.destroy
    redirect_to workplaces_path
  end
  
  private
    def workplace_params
      params.require(:workplace).permit(:name)
    end
end
