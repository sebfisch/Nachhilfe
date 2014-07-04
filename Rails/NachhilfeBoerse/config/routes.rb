Rails.application.routes.draw do
 
  root :to => "demands#get" #Startseite

  get "users/:id" => "users#get", :as => :users
  get "users/:id/edit" => "users#edit", :as => :edit_user
  get "users/:id/new_offer" => "users#new_offer", :as => :new_offer
  patch "users/:id" => "users#patch"

  delete "users/:id" => "users#delete_user"
  delete "offers/:id" => "users#delete_offer"
  delete "demand/:id" => "users#delete_demand", :as => :demand

  get "offers/:id" => "offers#get", :as => :offer
  get "offers/:id/edit" => "offers#edit", :as => :edit_offer
  post "offers/:id" => "offers#post" 
  patch "offers/:id" => "offers#patch"
  delete "offers/:id" => "offers#delete"
  put "offers:id/appoint" => "offers#appoint", :as => :appoint
  

  get "login" => "login#get", :as=>:logins
  post "login" => "login#post"
  delete "logout" => "login#destroy"

  get "admin" => "admin#get"
  post "admin" => "admin#post"
  patch "admin/:id" => "admin#change_admin_status", :as => :change_admin_status

  get "demands/new" => "demands#get", :as=>:new_demand
  post "results" => "results#post"

  get "appointments/:id" => "appointments#get", :as => :appointments
  post "appointments/:id" => "appointments#agree", :as=>:agree


end
