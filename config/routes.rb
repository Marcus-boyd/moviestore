Rails.application.routes.draw do
  devise_for :users, path_name: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root 'movies#index'
  resources :movies, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
