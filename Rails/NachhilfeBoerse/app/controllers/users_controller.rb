class UsersController < ApplicationController
	def get
		@user = User.find(params[:id])
	end
	
	def delete_offer
		offer = Offer.find(params[:id])
		user = offer.user
		offer.destroy
		redirect_to users_path(user)
	end
	
	def delete_demand
		demand = Demand.find(params[:id])
		user = demand.user
		demand.destroy
		redirect_to users_path(user)
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
		@user = @user = User.find(params[:id])
		save
	end
	
	private
	
	def save
 
		@user.update_attribute(:class_level, params[:user][:class_level])
		@user.update_attribute(:contact_info, params[:user][:contact_info])
		redirect_to users_path(@user)
	end
  
	
	def delete_user
	  user = User.find(params[:id])
	  user.destroy
	  redirect_to admin_path
	end

end