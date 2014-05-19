class Audio < ActiveRecord::Base
  belongs_to :album
  belongs_to :admin

  	mount_uploader :audio_file, AudioFileUploader
  	validates :title, presence: true, length: { maximum: 250 }	
	validates :audio_file, presence: true
end
