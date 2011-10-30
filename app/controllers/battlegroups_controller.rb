class BattlegroupsController < ApplicationController
  before_filter :authenticate_admin, :only => [:update]

  def index
    @battlegroups = Battlegroup.all
  end
end
