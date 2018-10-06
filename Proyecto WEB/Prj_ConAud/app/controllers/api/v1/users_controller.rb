class Api::V1::UsersController < ApplicationController


#before_action :set_user

  #before_action :set_user, only: [:show, :edit, :update, :destroy]

  
  def index
    render json: User.all	
  end


  private
  
    # def set_user
    #   @user = User.find(params[:id])
    # end

  
    def user_params
      params.require(:user).permit(:email, :encrypted_password)
    end




end