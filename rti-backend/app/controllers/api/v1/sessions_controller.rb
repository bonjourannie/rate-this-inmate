class Api::V1::SessionsController < ApplicationController
    skip_before_action :authenticated, only: [:login, :verification]

  def login
    render :login
  end

  def verification
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = ["Email or password invalid. Please, try it again"]
      redirect_to login_path
    end

  end

  def logout
    session.delete(:user_id)
    redirect_to login_path
  end


end