class KgGame < ApplicationRecord
  has_many :kg_players, dependent: :destroy
  after_initialize :set_defaults

  private

  def set_defaults
    self.state ||= "setup"
  end

end
