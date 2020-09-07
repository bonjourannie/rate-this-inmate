class Api::V1::UsersController < ApplicationController
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
end
