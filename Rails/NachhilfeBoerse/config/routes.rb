Rails.application.routes.draw do

  
  get "users/:id" => "users#get", :as => :users
  delete "users/:id" => "users#delete_user"
  delete "offers/:id" => "users#delete_offer"
  delete "demand/:id" => "users#delete_demand", :as => :demand


  get "offers/:id" => "offers#get", :as => :offer
  get "offers/:id/edit" => "offers#edit", :as => :edit_offer
  post "offers/:id" => "offers#post" 
  patch "offers/:id" => "offers#patch"


  get "login" => "login#get", :as=>:logins
  post "login" => "login#post"
  delete "logout" => "login#destroy"

  get "admin" => "admin#get"
  post "admin" => "admin#post"

  get "demands/new" => "demands#get"
  post "results" => "results#post"


end
