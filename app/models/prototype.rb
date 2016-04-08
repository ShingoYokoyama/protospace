class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :upload_images, dependent: :destroy
  
  accepts_nested_attributes_for :upload_images

  def main_image
    upload_images.main.first
  end

  def sub_images
    upload_images.sub
  end
end
