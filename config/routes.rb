Rails.application.routes.draw do
<<<<<<< HEAD
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
=======
  resources :portfolios
>>>>>>> 2d224dbfd481fb3e282cc0e5d41131657b06a1e3
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
