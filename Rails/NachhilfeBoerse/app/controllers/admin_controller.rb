class AdminController < ApplicationController
    def get
	  if current_user != nil then
	    @is_admin = current_user.is_admin
	  end	
	  @users = User.all
	  @new_user = User.new
    end
	
	def post
	  name = params[:user][:name]
	  password = params[:user][:password]
	  User.new(:name => name, :password => password).save
	  redirect_to admin_path
	end
	
end