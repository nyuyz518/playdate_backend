Rails.application.routes.draw do
  resources :likes
  resources :gos
    namespace :api do
    namespace :v1 do
      resources :events
      resources :reviews
    end
  end
end
