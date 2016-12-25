Rails.application.routes.draw do

  devise_for :users
  resources :events

  resources :repositories do
    member do
      post :bookmark
    end
  end

  resources :users do
    member do
      post :follow
    end
  end

  root 'events#index'
end
