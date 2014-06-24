class OffersController < ApplicationController
            
    def get
      @offer = Offer.find(params[:id])
      #@offer = Offer.new
    end
   
    def edit
      @offer = Offer.find(params[:id])          
    end
     
    def patch
      save(Offer.find(params[:id])) 
    end    
    
     private
     
     def save(offer)      
      offer.class_level = params[:offer][:class_level]
      offer.subject = params[:offer][:subject]
      offer.pay = params[:offer][:pay]
      offer.info = params[:offer][:info]
      offer.save
      redirect_to users_path(offer.user)
    end
end