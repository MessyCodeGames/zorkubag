Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"

  get "games" => "pages#games"

  # get "killergame" => "pages#killergame"
  # get "kg_games/new" => "kg_games#new"
  # get "kg_games/all" => "kg_games#index"

  resources :kg_games, only: [:index, :new, :create, :show, :destroy]
end
