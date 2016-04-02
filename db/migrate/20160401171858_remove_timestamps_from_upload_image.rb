class RemoveTimestampsFromUploadImage < ActiveRecord::Migration
  def change
    remove_column :upload_images, :created_at, :timestamps
    remove_column :upload_images, :updated_at, :timestamps
  end
end
