class OffersController < ApplicationController
     
    before_action :redirect_to_login, only: [:edit, :delete, :post, :patch]
	
    def get
      @offer = Offer.find_by_id(params[:id])
      if @offer == nil 
		redirect_to root_path 
	  end  
	end
   
    def delete
      offer = Offer.find_by_id(params[:id])
	  offer.destroy
	  redirect_to user_path(current_user)
    end
   
    def edit
      @offer = Offer.find_by_id(params[:id])  
      if @offer == nil 
		redirect_to root_path 
	  end  
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
	
    def redirect_to_login
	  @offer = Offer.find_by_id(params[:id])
      if  @offer.user != current_user and !@offer.user.is_admin then
        redirect_to login_path
      end
    end
	
end