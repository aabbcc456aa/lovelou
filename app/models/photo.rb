require 'carrierwave/orm/activerecord'
class Photo < ActiveRecord::Base
  mount_uploader :url, PhotoUploader

  has_many :replies, :foreign_key => 'subject_id'
  
  validates :name , :url, :presence =>true
  validates :name , :length => {:maximum => 30}
  
  
  def next_record_id
    Photo.where("id > '#{self.id}'").order("id asc").first
  end
  
  def pre_record_id
    Photo.where("id < '#{self.id}'").order("id desc").first
  end
end
