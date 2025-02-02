Rails.application.routes.draw do
  get 'kill_means/new'
  get 'kill_means/create'
  get 'kill_means/update'
  get 'kill_means/edit'
  get 'kill_means/destroy'
  get 'kill_means/index'
  get 'kill_means/show'
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"

  get "games" => "pages#games"

  resources :kg_games, only: [:index, :new, :create, :show, :destroy] do
    member do
      get :verify_password
      post :verify_password_check
    end
    resources :kg_players, only: [:index, :new, :create, :destroy, :show]
  end
end
