class Person < ActiveRecord::Base

  validates :name, :presence => true

  def age_range
  end
  
  def area_range
  end
end

