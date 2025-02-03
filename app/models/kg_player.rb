class KgPlayer < ApplicationRecord
  belongs_to :kg_game
  belongs_to :kill_mean, optional: true
end
