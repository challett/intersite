class InterestsController < ApplicationController
  def new
  end
  def create
    @user = User.find(params[:user_id])
    @interest = @user.interests.create(params[:interest].permit(:name))
    redirect_to edit_user_path(@user)
  end
  def destroy
    @user = User.find(params[:user_id])
    @interest = @user.interests.find(params[:id])
    @interest.destroy
    redirect_to edit_user_path(@user)
  end
end
