class Album < ActiveRecord::Base
  	belongs_to :admin
  	has_many :audio, dependent: :destroy
  	mount_uploader :album_cover, AlbumCoverUploader
  	validates :title, presence: true, length: { maximum: 250 }	
	validates :album_cover, presence: true
end
