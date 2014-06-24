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
	
	
end