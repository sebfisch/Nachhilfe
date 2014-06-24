class ResultsController < ApplicationController
	
	def post
		@subject_demand = params[:demand][:subject]	#zu suchendes Fach
		@class_demand = params[:demand][:class_level] #zu suchende Klassenstufe
		@offer = Offer.where(subject: params[:demand][:subject], class_level: params[:demand][:class_level]).all
		#Folgendes nur, wenn User angemeldet (muss noch getestet werden)
		# user_id muss noch ergänzt werden
		#if !signed_in? then
			#@demand = Demand.new(:subject=> @subject_demand,:class_level => @class_demand)
			#@demand.save
		#end
		
	end
end