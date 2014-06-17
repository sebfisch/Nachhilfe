Rails.application.routes.draw do
  get "login" => "login#get", :as=>:logins
  post "login" => "login#post"
  
end
