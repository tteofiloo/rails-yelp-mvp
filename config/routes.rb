Rails.application.routes.draw do
  # resources :restaurants only: [:index, :show, :new, :create]
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
end
