Rails.application.routes.draw do
  # devise_for :users
  root to:"welcome#index"

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: "users/omniauth_callbacks",
    passwords: "users/passwords",
    confirmations: "users/confirmations"
  }

  namespace :admin do
  	resources :dashboard, only: [:index] do
  	end
    resources :lectures
    resources :courses
  end

end
