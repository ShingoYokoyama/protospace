class UploadImage < ActiveRecord::Base
  belongs_to :prototype, dependent: :destroy

  enum status: [:main, :sub]

  mount_uploader :name, UploadImageUploader

  validates_presence_of :name
end
