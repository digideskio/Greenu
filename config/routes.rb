Greenu::Application.routes.draw do
  get "/markets" => "Markets#index", :as => "markets"

  get "/market" => "Markets#show", :as => "market"

  get "/market/edit" => "Markets#edit", :as => "edit_market"

  get "/market/new" => "Markets#new", :as => "new_market"

  get "/home" => "Pages#home", :as => "home"

  root :to => 'pages#home'

end

  