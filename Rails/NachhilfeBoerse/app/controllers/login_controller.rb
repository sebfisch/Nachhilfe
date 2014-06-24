class LoginController < ApplicationController
  def get

  end
  
  def post
    user = User.find_by(name: params[:login][:name])
    password = params[:login][:password]
    
    if user!=nil && user.authenticate(password) then 
      sign_in(user)
      redirect_to users_path(user)
    else
      render :get
    end
  end
  
  def destroy
    sign_out
    redirect_to login_path
  end
end
