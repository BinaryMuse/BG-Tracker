class Battlegroup < ActiveRecord::Base
  has_many :realms, :order => 'name ASC'
end
