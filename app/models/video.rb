class Video < ActiveRecord::Base
  belongs_to :admin
    mount_uploader :video_file, VideoFileUploader
  	validates :title, presence: true, length: { maximum: 250 }	
	validates :video_file, presence: true
end
