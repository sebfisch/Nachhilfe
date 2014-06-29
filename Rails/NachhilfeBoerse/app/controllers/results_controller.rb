class ResultsController < ApplicationController
	
	def post
		@subject_demand = params[:demand][:subject]	#zu suchendes Fach
		@class_demand = params[:demand][:class_level] #zu suchende Klassenstufe
		#In @offer werden gefundene Angebote für den results-view abgespeichert
		@offer = Offer.where(subject: @subject_demand, class_level: @class_demand).all
		#Wenn user angemeldet wird Gesuch gespeichert, wenn es noch nicht existiert
		if signed_in? then
			demand_exist = Demand.where(subject: @subject_demand, class_level: @class_demand)
			if demand_exist.size == 0 then
				demand = Demand.new(:subject=> @subject_demand,:class_level => @class_demand,:user_id => current_user.id)
				demand.save
			end
		end
		
	end
end