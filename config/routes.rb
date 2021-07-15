Rails.application.routes.draw do
  devise_for :users
  root to: 'jobs#index'

  resources :company, only: [:new, :create, :show] do
    resources :jobs, only: :create
  end

  resources :jobs, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
