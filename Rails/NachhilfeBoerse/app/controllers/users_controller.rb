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
end