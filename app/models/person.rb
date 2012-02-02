class Person < ActiveRecord::Base
  belongs_to :area
  belongs_to :age
  belongs_to :sex

  validates :name, :area_id, :age_id, :sex_id, :presence => true
end
