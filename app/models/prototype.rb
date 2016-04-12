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
    likes.find_by user_id: user.id
  end

   def main_image
    upload_images.main.first
  end

  def sub_images
    upload_images.sub
  end

  def prototype_user
    user
  end

  def prototype_images
    upload_images
  end

  def user_like_exists?
    user_like(current_user) ? true : false
  end

end
