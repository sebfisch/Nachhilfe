class UsersController < ApplicationController
	def get
	    @user = User.find_by_id(params[:id])
		if @user == nil then
		  redirect_to root_path
		else
		  if signed_in? && (current_user.id == @user.id || current_user.is_admin) then
		    @allowed = true
		  else
		    @allowed = false
		  end  
		end  
		#appointment = Appointment.find(params[:offer_id])
	end
	
	def delete_offer
		offer = Offer.find(params[:id])
		user = offer.user
		offer.destroy
		redirect_to users_path(current_user)
	end
	
	def delete_demand
		demand = Demand.find(params[:id])
		user = demand.user
		demand.destroy
		redirect_to users_path(current_user)
	end
	
	def new_offer
		@user = User.find(params[:id])
		offer = Offer.new
		offer.user=@user
		offer.save
		redirect_to edit_offer_path(offer)

	end

	def edit
		@user = User.find(params[:id])
	end
	
	def patch
		@user = User.find(params[:id])
		save
	end
	
	def delete_user
	  user = User.find(params[:id])
	  user.destroy
	  redirect_to admin_path
	end
	
	private
	
	def save
		@user.update_attribute(:class_level, params[:user][:class_level])
		@user.update_attribute(:contact_info, params[:user][:contact_info])
		new_password = params[:user][:password]
		if new_password.length >0 then
			@user.password =new_password
			if @user.save then
				redirect_to users_path(@user)
			else
				render :edit
			end
		else
			redirect_to users_path(@user)
		end
	end


end