class OffersController < ApplicationController
            
    def get
      @offer = Offer.find(params[:id])

    end
   
    def edit
      @offer = Offer.find(params[:id])          
    end
     
    def patch
      if signed_in? then
        save(Offer.find(params[:id])) 
      end
    end    
    
    def appoint 
      user = current_user
      offer = Offer.find(params[:id])
      app = Appointment.new   
      app.is_agreed = false
      app.was_liked = false
      app.user = user
      app.offer = offer      
      app.save
      redirect_to users_path(current_user)
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