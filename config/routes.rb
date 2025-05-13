Rails.application.routes.draw do
  get 'dnd_spells/new'
  get 'dnd_spells/create'
  get 'dnd_spells/update'
  get 'dnd_spells/edit'
  get 'dnd_spells/destroy'
  get 'dnd_spells/index'
  get 'dnd_spells/show'
  get 'my_games/index'
  get 'my_games/show'
  get 'games/index'
  get 'games/show'
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
end
