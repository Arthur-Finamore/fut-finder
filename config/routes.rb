Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :matches do
    resources :match_makers, only: [:new, :create]
  end

  resources :match_makers, only: [:destroy]

end
