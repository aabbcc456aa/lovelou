class Album < ActiveRecord::Base
  has_many :photos
  
 
  attr_accessor :password_confirmation

  validates :name, :album_type, :permiss, :presence => true
  validates :question, :answer , :presence => true , :if =>Proc.new{|t| t.permiss == 2 }
  validates :password , :presence => true , :if =>Proc.new{|t| t.permiss == 3 }
  
  def first_photo
    self.photos.order('id desc').first.url_url(:thumb)
  end
  
  def front_photo
    Photo.find(self.front_photo).first.url_url(:thumb)
  end
  
  def hit
    now_hits = self.hits + 1
    self.update_attribute(:hits, now_hits )
  end
end
