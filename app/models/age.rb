class Age < ActiveRecord::Base
   validates :age_range, :presence => true
end
