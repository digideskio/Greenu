Greenu::Application.routes.draw do
 
  get "/markets" => "markets#index", :as => "markets"
 
  get "/market/new" => "markets#new", :as => "new_market"
 
  get "/market/" => "markets#show", :as => "market"
 
  post "/markets" => "markets#create"
 
  # get "/market/edit" => "markets#edit", :as => "edit_market"
 
  get "/" => "Pages#home", :as => "home"
 
  root :to => "Pages#home"
 
end
 

  