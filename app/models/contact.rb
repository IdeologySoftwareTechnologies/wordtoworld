class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  #validates :city, presence: true
  #validates :country, presence: true
  validates :message, presence: true  
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
