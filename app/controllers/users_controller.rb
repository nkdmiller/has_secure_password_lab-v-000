class UsersController < ApplicationController
<<<<<<< HEAD
  def new
  end
  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/welcome/show"
    else
      redirect_to "/users/new"
    end
=======
  def create
    User.create(user_params)
    redirect_to "welcome/show"
>>>>>>> 201912afe5a7a1cac95c65d75d8b5b468a289291
  end
 
  private
 
  def user_params
<<<<<<< HEAD
    params.require(:user).permit(:name, :password, :password_confirmation)
=======
    params.require(:user).permit(:username, :password, :password_confirmation)
>>>>>>> 201912afe5a7a1cac95c65d75d8b5b468a289291
  end
end
