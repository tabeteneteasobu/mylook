Rails.application.routes.draw do
  root to: "items#index"
  resources :items, only: [:index, :new, :create]
  resources :tops, only: [:index, :show, :edit, :update, :destroy]
  resources :bottoms, only: [:index, :show, :edit, :update, :destroy]
end
