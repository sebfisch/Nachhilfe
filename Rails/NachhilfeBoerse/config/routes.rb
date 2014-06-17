Rails.application.routes.draw do

  get "offers/:id" => "offers#get", :as => :offer
  get "offers/:id/edit" => "offers#edit", :as => :edit_offer
  post "offers/:id" => "offers#post" 
  patch "offers/:id" => "offers#patch"

  get "login" => "login#get", :as=>:logins
  post "login" => "login#post"
  

end
