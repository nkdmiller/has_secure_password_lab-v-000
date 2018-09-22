class SessionController < ApplicationController
  def login
    if session[:user_id].blank?
      render :login
    else
      redirect_to "welcome/show"
    end
  end
  def create
    @user = User.find_by(username: params[:username])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end
end
