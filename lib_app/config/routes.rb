Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "users/:id", to: "users#show"

  get "sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"

  get "/libraries", to: "libraries#index"
  post "/libraries", to: "libraries#create"
  get "/libraries/:id", to: "libraries#show", as: "library"
  get "/libraries/:id/edit", to: "libraries#edit", as: "edit_library"
  patch "/libraries/:id/edit", to: "libraries#update"
  
  get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"

end
