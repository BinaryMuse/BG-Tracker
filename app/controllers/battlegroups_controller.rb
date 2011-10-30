class BattlegroupsController < ApplicationController
  def index
    @battlegroups = Battlegroup.all
  end
end
