class Prototype < ActiveRecord::Base
  has_many :upload_images, dependent: :destroy
  has_many :likes, dependent: :destroy, counter_cache: :likes_count
  belongs_to :user
  accepts_nested_attributes_for :upload_images
  validates_presence_of :title, :catthcopy, :concept

  def error_messages
    errors.full_messages
  end

  def user_like(user)
    likes.find_by(user_id: user.id).id
  end

  def user_like_exists?(user)
    user_like(user) ? true : false
  end




end
