class Realm < ActiveRecord::Base
  attr_accessible :name, :seen
  belongs_to :battlegroup
end
