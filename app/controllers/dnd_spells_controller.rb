class DndSpellsController < ApplicationController
  def index
    @dnd_spells = DndSpell.all
  end

  def show
    @dnd_spell = DndSpell.find(params[:id])
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

end
