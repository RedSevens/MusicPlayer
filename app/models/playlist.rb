class Playlist < ActiveRecord::Base
  has_many :songs
  has_many :stations
  has_many :users, through: :stations
end
