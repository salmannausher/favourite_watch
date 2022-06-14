Rails.application.routes.draw do
  root 'sessions#new'
  resources :users, only: [:create] do 
    member do
      get :favourite_watches
    end
  end
  # resources :watches do
  #   member do
  #     get :favourite
  #   end
  # end
  delete "remove_favourite", to: "favorite_watches#delete"
  put 'make_favourite', to: 'favorite_watches#create'
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  get "/dashboard", to: "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end