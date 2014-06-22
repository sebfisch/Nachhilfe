class AdminController < ApplicationController
    def get
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