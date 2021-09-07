Rails.application.routes.draw do
  devise_for :users
  root to: 'jobs#index'

  resources :companies, only: [:new, :create, :show, :index] do
    resources :jobs, only: [:new, :create, :show]
  end

  get "job/[:id]/preview", to: "jobs#preview", as: 'preview'
  resources :jobs, only: [:index, :show, :new]

  get '/imprint', to: 'pages#imprint'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
