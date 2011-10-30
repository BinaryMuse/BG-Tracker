class BattlegroupsController < ApplicationController
  def index
    @battlegroups = Battlegroup.all
  end

  def update
    @battlegroup = Battlegroup.find params[:id]
    render :text => params.to_json
  end
end
