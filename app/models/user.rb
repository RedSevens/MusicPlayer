class User < ActiveRecord::Base
  has_many :stations
  has_many :playlists, through: :stations

  def playlist_list
    if self.playlists != nil
      self.playlists.collect {|playlist| playlist.name}
    end.join(", ")
  end

  def playlist_list=(playlists_string)
    playlist_names = playlists_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_playlists = playlist_names.collect { |name| Playlist.find_or_create_by(name: name)}
    self.playlists = new_or_found_playlists
  end

  def to_s
    name
  end
end
