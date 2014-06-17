class LoginController < ApplicationController
  def get

  end
  
  def post
    user = User.find_by(name: params[:login][:name])
    password = params[:login][:password]
    
    if user!=nil && user.authenticate(password) then 
      redirect_to user_path(user)
    else
      render :get
    end
  end
end
