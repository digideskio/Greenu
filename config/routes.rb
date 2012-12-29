Greenu::Application.routes.draw do
  get "/home" => "Pages#home", :as => "home"

  get "/markets" => "Pages#show", :as => "markets"

end

  