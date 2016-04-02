class UploadImage < ActiveRecord::Base
  belongs_to :prototype

  enum status: %i(main sub)

  mount_uploader :name, UploadImageUploader

  validates_presence_of :name
end
