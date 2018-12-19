Rails.application.routes.draw do
  devise_for :companies,  controllers: {
    sessions: 'companies/sessions',
    registrations: 'companies/registrations'
  }
  devise_for :jobseekers,  controllers: {
    sessions: 'jobseekers/sessions',
    registrations: 'jobseekers/registrations'
  }

  root to: 'pages#home'

  resources :offers, only: [:index, :show] do
    resources :candidacies, only: [:create]
  end

  resources :candidacies, only: [:index, :show]

  namespace :company do
    resources :offers
  end

end
