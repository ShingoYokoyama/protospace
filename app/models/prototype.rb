class Prototype < ActiveRecord::Base
  has_many :upload_images, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :upload_images
  validates_presence_of :title, :catthcopy, :concept

  def error_messages
    errors.full_messages
  end
end
