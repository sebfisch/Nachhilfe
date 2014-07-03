class AppointmentsController < ApplicationController
	def get
		@appointments = Offer.find(params[:id]).appointments
	end
	
	def post
	end

	def agree
		if signed_in? && Appointment.find(params[:id]).offer.user_id == current_user.id then
			a = Appointment.find(params[:id])
			a.is_agreed = !a.is_agreed
			a.save
			redirect_to appointments_path(a.offer_id)
		end
		
	end
end