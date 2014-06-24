class AdminController < ApplicationController
    def get
	  if current_user != nil then
	    @is_admin = current_user.is_admin
	  end	
	  @users = User.all
	  @actual_user = current_user
	  @new_user = User.new
    end
	
	def post
	  name = params[:user][:name]
	  password = params[:user][:password]
	  User.new(:name => name, :password => password).save
	  redirect_to admin_path
	end
	
	def change_admin_status
	  user = User.find(params[:id])
	  if user.is_admin then
	    user.update_attribute(:is_admin, false)
	  else
	    user.update_attribute(:is_admin, true)
	  end
	  
	  redirect_to admin_path
	end
end