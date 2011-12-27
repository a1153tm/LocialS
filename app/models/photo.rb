class Photo < ActiveRecord::Base
  attr_accessible :title, :image, :description
  mount_uploader :image, ImageUploader

  belongs_to :person
  has_many :comments
  validates :title, :image, :description, :presence => true
end

