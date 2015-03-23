Rails.application.routes.draw do
  root to: 'flash_cards#index'

  resources :flash_cards, only: [:index, :new, :create]
end
