class ResultsController < ApplicationController
	def patch
	  subj = params[:params1]
	  class_lev = params[:params2]
	  @offer = Offer.where(subject: subj, class_level: class_lev).all
	end
	
	def post
		@subject_demand = params[:demand][:subject]	#zu suchendes Fach
		@class_demand = params[:demand][:class_level] #zu suchende Klassenstufe
		#In @offer werden gefundene Angebote für den results-view abgespeichert
		if @subject_demand == "" && @class_demand == "" then
			@offer = Offer.all
		elsif @subject_demand == "" then
			@offer = Offer.where(class_level: @class_demand).all
		elsif @class_demand == "" then
			@offer = Offer.where(subject: @subject_demand).all
		else
			@offer = Offer.where(subject: @subject_demand, class_level: @class_demand).all
		end
		#Wenn user angemeldet wird Gesuch gespeichert, wenn es noch nicht existiert
		if signed_in? && @subject_demand != "" && @class_demand != "" then
			demand_exist = Demand.where(subject: @subject_demand, class_level: @class_demand, user_id: current_user)
			if demand_exist.size == 0 then
				demand = Demand.new(:subject=> @subject_demand,:class_level => @class_demand,:user_id => current_user.id)
				demand.save
			end
		end
		
	end
end