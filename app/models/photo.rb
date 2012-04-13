require 'carrierwave/orm/activerecord'
class Photo < ActiveRecord::Base
  mount_uploader :url, PhotoUploader
  
  validates :name , :url, :presence =>true
  validates :name , :length => {:maximum => 30}
end
