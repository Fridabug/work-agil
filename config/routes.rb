Rails.application.routes.draw do
  devise_for :users
  root to: 'jobs#index'

  resources :companies, only: [:new, :create, :show] do
    resources :jobs, only: [:new, :create, :show]

  end


  resources :jobs, only: [:show, :index] do
    member do
      get :preview
    end
  end

  get 'new', to: 'companies#new'
  get '/imprint', to: 'pages#imprint'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
