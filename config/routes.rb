Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: :show
  resources :museums, only: :show
  resources :collections, only: :show
  resources :submissions, only: :create
  resources :artefacts, only: [ :index, :show ] do
    resources :favorites, only: :create
  end
end
