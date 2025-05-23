Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"

  get "games" => "pages#games"

  resources :kg_games, only: [:index, :new, :create, :show, :destroy] do
    member do
      get :verify_password
      post :verify_password_check
      get :start_game
      get :end_game_screen
    end
    resources :kg_players, only: [:index, :new, :create, :destroy, :show] do
      member do
        post :kill_target
      end
    end
  end

  resources :my_games, only: [:index, :show]
  resources :dnd_spells, only: [:index, :new, :create, :show, :destroy]
end
