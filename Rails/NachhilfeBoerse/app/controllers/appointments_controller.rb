class AppointmentsController < ApplicationController
	def get
	end
	
	def post
	end

	def agree
		a = Appointment.find(params[:id])
		a.is_agreed = !a.is_agreed
		a.save
		redirect_to appointments_path
	end
end