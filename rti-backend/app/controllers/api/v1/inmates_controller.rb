class Api::V1::InmatesController < ApplicationController
    def index
        @inmates = Inmate.all
        render json: @inmates
    end
    
    def create 
        @inmate = Inmate.create(inmate_params)
        if @inmate.save
            render json: @inmate
        else 
            render json: {error: 'error creating inmate'}
        end
    end
    #I don't think I want to create inmates. Use API instead
    
    def show 
        @inmate = Inmate.find(params[:id])
        render json: @inmate
    end
    
    def destroy
        @inmate = Inmate.find(params[:id])
        @inmate.destroy 
    end

    private 

    def inmate_params 
        params.require(:inmate).permit(:contact, :username, :upvote, :name, :gender, :age, :charges, :release_date, :looking_for)
    end



end
