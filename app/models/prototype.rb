class Prototype < ActiveRecord::Base
  has_many :upload_images, dependent: :destroy
end
