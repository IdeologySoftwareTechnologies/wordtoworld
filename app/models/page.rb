class Page < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :admin


  	mount_uploader :page_audio, PageAudioUploader
  	mount_uploader :page_text, PageTextUploader
  	validates :page_audio, presence: true
	validates :page_text, presence: true
end
