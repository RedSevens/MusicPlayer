class Song < ActiveRecord::Base
  belongs_to :playlist
  validates_presence_of :file, :if => Proc.new{File.extname(:file.to_s) == ".mp3"}
  validates_presence_of :playlist_id

  mount_uploader :file, FileUploader
end
