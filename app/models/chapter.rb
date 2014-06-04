class Chapter < ActiveRecord::Base
  belongs_to :admin
  validates :title, presence: true, length: { maximum: 250 }
  has_many :pages, dependent: :destroy	
end
