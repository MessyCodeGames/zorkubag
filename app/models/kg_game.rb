class KgGame < ApplicationRecord
  has_many :kg_players, dependent: :destroy
end
