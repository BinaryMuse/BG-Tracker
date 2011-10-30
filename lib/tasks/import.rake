require 'net/http'
require 'uri'

desc "Import realm information from the Battle.net API"
namespace :app do
  task :import => :environment do
    battlegroups = {}

    url = "http://us.battle.net/api/wow/realm/status"
    response = Net::HTTP.get_response URI.parse(url)

    realms = JSON.parse response.body
    realms["realms"].each do |realm|
      bg    = realm["battlegroup"]
      realm = realm["name"]

      battlegroups[bg] ||= []
      battlegroups[bg].push realm
    end

    Battlegroup.delete_all
    Realm.delete_all

    battlegroups.each do |key, value|
      bg = Battlegroup.create name: key
      value.each do |realm|
        r = Realm.new name: realm
        r.battlegroup = bg
        r.save
      end
    end
  end
end
