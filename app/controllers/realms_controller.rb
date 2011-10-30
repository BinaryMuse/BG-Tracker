class RealmsController < ApplicationController
  def create
    realm = Realm.new params[:realm]
    realm.battlegroup_id = params[:realm][:battlegroup]
    realm.save
    redirect_to root_path
  end

  def update
    @realm = Realm.find params[:id]
    @realm.seen = params[:realm][:seen]
    @realm.save
  end
end
