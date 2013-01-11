Greenu::Application.routes.draw do
  get "/markets" => "Markets#index", :as => "markets"

  get "/market" => "Markets#show", :as => "market"

  post "/market" => "Markets#create"

  get "/market/edit" => "Markets#edit", :as => "edit_market"

  get "/market/new" => "Markets#new", :as => "new_market"

  get "/" => "Pages#home", :as => "home"

  root :to => "Pages#home"

end

  