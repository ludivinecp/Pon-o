class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_rider!
  
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to show_user_path, notice: 'User was successfully created.'
      render :show
      else
      render :edit
      end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id), notice: 'User was successfully created.'
    else
    render :edit
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def user_params
      # params[:user]
      params.require(:user).permit(:email, :first_name, :last_name, :age, :gender, :weight, :tall, :nickname, :level, :centre, :phone, :address, :city )
    end
end
