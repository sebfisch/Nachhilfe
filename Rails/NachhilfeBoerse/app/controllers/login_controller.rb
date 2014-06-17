class LoginController < ApplicationController
  def get
    @users = User.all
    @user = User.new
  end
  
end