class Api::V1::UsersController < ApplicationController
    skip_before_action :authenticated, only: [:new, :create]

    def index
        @users = User.all 
        render json: @users 
    end
    
    def create 
        @user = User.new(user_params)
        if @user.save
            render json: @user 
        else 
            render json: {error: 'there was an error creating your account'}
        end
    end
    
    def show 
        @user = User.find(params[:id])
        render json: @user
    end
    
    def destroy 
        @user = User.find(params[:id])
        @user.destroy
    end

    private 

    def user_params 
       params.require(:user).permit(:bio, :gender, :age, :username, :location, :looking_for, :interests)
    end

    ######## New User Methods ########
  def password_confirmation?
    if (params[:user][:password] == params[:user][:password_confirmation]) && !params[:user][:password].empty?
      return true
    else
      return false
    end
  end

  def validate_user_signup
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path()
    end
  end

end
