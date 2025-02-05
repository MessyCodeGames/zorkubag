class KgGame < ApplicationRecord
  has_many :kg_players, dependent: :destroy
  after_initialize :set_defaults

  def check_end_of_game
    if kg_players.where(state: "alive").count <= 1
      update!(state: "finished") 
      return true
    end
    false
  end

  private

  def set_defaults
    self.state ||= "setup"
  end

end
