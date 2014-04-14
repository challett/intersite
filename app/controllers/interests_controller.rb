class InterestsController < ApplicationController
  def new
    @interest = Interest.new
  end
  
  def index
    @interests = Interest.all
  end
  
  def create
    @user = User.find(params[:user_id])
    @interest = @user.interests.create(params[:interest].permit(:name))
    redirect_to edit_user_path(@user)
  end
  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    redirect_to root_path
  end
end
