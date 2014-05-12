class InterestsController < ApplicationController
  before_action :set_interest, only: [:show, :edit, :update, :destroy]
  def new
    @interest = Interest.new
  end
  
  def index
    @interests = Interest.all
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    respond_to do |format|
      if @interest.update(interest_params) 
        format.html { redirect_to @interest, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @interest.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def create
    @user = User.find(params[:user_id])
    @interest = @user.interests.create(params[:interest].permit(:name))
    redirect_to edit_user_path(@user)
  end
  
  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    redirect_to interests_path
  end
  
  private
  def set_interest
      @interest = Interest.find(params[:id])
  end
  def interest_params
      params.require(:interest).permit(:name, :picture_url, :user_ids => [])
  end  
end
