class BattlegroupsController < ApplicationController
  before_filter :authenticate_admin, :only => [:update]

  def index
    @battlegroups = Battlegroup.order('name ASC')
  end

  def update
    @battlegroup = Battlegroup.find params[:id]
    render :text => params.to_json
  end
end
