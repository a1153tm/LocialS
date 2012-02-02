class Photo < ActiveRecord::Base
  attr_accessible :title, :person_id, :image, :description
  mount_uploader :image, ImageUploader

  belongs_to :people
  has_many :comments
  validates :title, :person_id, :image, :description, :presence => true
end
