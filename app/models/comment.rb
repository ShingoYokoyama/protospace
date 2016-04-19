class Comment < ActiveRecord::Bas
  belongs_to :user
  belongs_to :prototype
end
