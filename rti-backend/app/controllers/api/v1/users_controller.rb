class Api::V1::UsersController < ApplicationController
    def index
        
    end
    
    def create 
    end
    
    def show 
    end
    
    def delete 
    end

    private 

    def user_params 
       params.require(:user).permit(:bio, :gender, :age, :username, :location, :looking_for, :interests)
    end
end
