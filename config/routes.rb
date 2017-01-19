Rails.application.routes.draw do
  resources :session
  resources :users
  resources :songs
end
