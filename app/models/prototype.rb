class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :upload_images, dependent: :destroy
<<<<<<< HEAD
  
  accepts_nested_attributes_for :upload_images

  def main_image
    upload_images.main.first
  end

  def sub_images
    upload_images.sub
=======
  has_many :likes, dependent: :destroy, counter_cache: :likes_count
  belongs_to :user

  accepts_nested_attributes_for :upload_images
  validates_presence_of :title, :catthcopy, :concept

  def error_messages
    errors.full_messages
  end

  def user_like(user)
    likes.find_by(user_id: user.id)
  end

  def user_like_exists?(user)
    user_like(user) ? false : true
>>>>>>> Like・コメント機能の実装
  end
end
