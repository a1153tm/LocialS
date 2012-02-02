class Comment < ActiveRecord::Base
  belongs_to :photo
  belongs_to :person

  validates :photo_id, :person_id, :presence => true
  validates :comment, :presence => { :message => "コメントを入力してください" }
end
