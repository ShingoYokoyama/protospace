class Prototype < ActiveRecord::Base
  has_many :upload_images
  enum status: [:main, :sub]

  mount_uploader :name, UploadImageUploader

  validates_presence_of :name
end
