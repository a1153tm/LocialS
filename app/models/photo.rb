class Photo < ActiveRecord::Base
  attr_accessible :title, :targetageid, :targetareaid, :targetsex, :owner_id, :image 
  mount_uploader :image, ImageUploader
end
