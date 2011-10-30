class Battlegroup < ActiveRecord::Base
  has_many :realms, :order => 'name ASC'
  default_scope order('name ASC')
end
