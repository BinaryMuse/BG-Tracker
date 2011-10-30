class RealmsController < ApplicationController
  before_filter :authenticate_admin

  def update
    @realm = Realm.find params[:id]
    @realm.seen = params[:realm][:seen]
    @realm.save
  end
end
