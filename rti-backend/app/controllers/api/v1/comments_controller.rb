class Api::V1::CommentsController < ApplicationController

    before_action :set_inmate

    def index
        @comments = @inmate.comments 
        render json: @comments 
    end

    
    def create 
        @comment = @inmate.comments.build(comment_params)
        @comment.save
        render json: @comment
    end
    
    def show 
        @comment = @inmate.comments.find_by(id: params[:id])
        render json: @comment
    end
    
    def destroy 
        @comment = Comment.find(params[:id])
        @comment.destroy
    end

    private 
    
    def set_inmate
        @inmate += Inmate.find(params[:inmate_id])
    end

    def comment_params 
       params.require(:body).permit(:inmate_id, :user_id, :commentable_id, :commentable_type)
    end
end
