Rails.application.routes.draw do
 get "users/:id" => "users#get", :as => :users

  delete "offers/:id" => "users#delete_offer", :as => :offer
  delete "demand/:id" => "users#delete_demand", :as => :demand

end
