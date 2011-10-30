class BattlegroupsController < ApplicationController
  def index
    @battlegroups = Battlegroup.order('name ASC')
  end

  def update
    @battlegroup = Battlegroup.find params[:id]
    render :text => params.to_json
  end
end
