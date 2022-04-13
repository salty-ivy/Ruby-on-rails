Rails.application.routes.draw do
  get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#welcome"
  get 'about', to: 'home#about'
  resources :articles do
    resources :comments
  end
  # get '/articles', to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # Defines the root path route ("/")
  # root "articles#index"
end
