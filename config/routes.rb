Rails.application.routes.draw do
  devise_for :companies
  devise_for :jobseekers
  root to: 'pages#home'

  resources :offers, only: [:index, :show] do
    resources :candidacies, only: [:create]
  end

  resources :candidacies, only: [:index, :show]

  namespace :company do
    resources :offers
  end

end
