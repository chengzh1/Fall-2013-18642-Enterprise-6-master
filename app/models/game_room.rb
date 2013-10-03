class GameRoom < ActiveRecord::Base
  attr_accessible :maxplayers, :name
end
