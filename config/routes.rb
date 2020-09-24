Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :events do
        collection do
          get 'search'
        end
      end
      resources :users, only: %i[create]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      resources :reviews
      resources :tags
      resources :likes
      resources :gos
    end
  end
end
