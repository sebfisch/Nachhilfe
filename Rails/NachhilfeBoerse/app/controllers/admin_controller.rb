require 'csv'
class AdminController < ApplicationController
	
    def get
	  if current_user != nil then
	    @is_admin = current_user.is_admin
	  end	
	  @users = User.all
	  @admin = User.first
	  @users_not_first = User.where.not(id: 1).order(:last_activity).reverse_order
	  @actual_user = current_user
	  @new_user = User.new
    end
	
	def post
		if params[:name] != nil then
	  		name = params[:name]
	  		password = params[:password]
	  		User.new(:name => name, :password => password).save
	  	end

	  	if params[:file] != nil then
	  		file = params[:file]
	  		CSV.foreach(file.path, headers: true) do |row|
	  			u=User.new
				u.name=row[0]
				u.password=row[1]
				u.save
	  		end
	  	end
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