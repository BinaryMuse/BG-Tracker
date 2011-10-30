class RealmsController < ApplicationController
  def update
    @realm = Realm.find params[:id]
    @realm.seen = params[:realm][:seen]
    @realm.save
  end
end
