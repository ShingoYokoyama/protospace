class Prototype < ActiveRecord::Base
  has_many :upload_images, dependent: :destroy
  has_many :likes, dependent: :destroy, counter_cache: :likes_count
  belongs_to :user
  accepts_nested_attributes_for :upload_images
  validates_presence_of :title, :catthcopy, :concept

  def error_messages
    errors.full_messages
  end

  def prototype_user
    user
  end

  def prototype_images
    upload_images
  end



end
