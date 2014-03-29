class InterestsController < ApplicationController
  def new
  end
  def create
    @user = User.find(params[:user_id])
    @interest = @user.interests.create(params[:interest].permit(:name))
    redirect_to user_path(@user)
  end
end
