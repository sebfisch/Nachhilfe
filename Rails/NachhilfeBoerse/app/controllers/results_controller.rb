class ResultsController < ApplicationController
	def patch
	  subj = params[:params1]
	  class_lev = params[:params2]
	  @offer = Offer.where(subject: subj, class_level: class_lev).all
	  if signed_in? then
			demand_exist = Demand.where(subject: @subject_demand, class_level: @class_demand, user_id: current_user)
			if demand_exist.size == 0 then
				demand = Demand.new(:subject=> @subject_demand,:class_level => @class_demand,:user_id => current_user.id)
				demand.save
			end
		end
	  
	end
	
	def post
		@subject_demand = params[:demand][:subject]	#zu suchendes Fach
		@class_demand = params[:demand][:class_level] #zu suchende Klassenstufe
		#In @offer werden gefundene Angebote für den results-view abgespeichert
		@offer = Offer.where(subject: @subject_demand, class_level: @class_demand).all
		#Wenn user angemeldet wird Gesuch gespeichert, wenn es noch nicht existiert
		if signed_in? then
			demand_exist = Demand.where(subject: @subject_demand, class_level: @class_demand, user_id: current_user)
			if demand_exist.size == 0 then
				demand = Demand.new(:subject=> @subject_demand,:class_level => @class_demand,:user_id => current_user.id)
				demand.save
			end
		end
		
	end
end