class RealmsController < ApplicationController
  def create
    name = params[:realm][:name]
    name.split(',').each do |n|
      realm = Realm.new name: n
      realm.battlegroup_id = params[:realm][:battlegroup]
      realm.save
    end
    redirect_to root_path
  end

  def update
    @realm = Realm.find params[:id]
    @realm.seen = params[:realm][:seen]
    @realm.save
  end
end
