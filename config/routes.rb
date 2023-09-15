Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :api do
    namespace :v1 do
      root "welcome#index"
      resources :friends
    end
    namespace :v2 do
      root "welcome#index"
      resources :friends
      resources :posts
    end
  end

end
