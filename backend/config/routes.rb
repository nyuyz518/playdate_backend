Rails.application.routes.draw do
    namespace :api do
    namespace :v1 do
      resources :events
      resources :users
      resources :reviews
      resources :tags
      resources :likes
      resources :gos
    end
  end
end
