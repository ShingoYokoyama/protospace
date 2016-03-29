class CreateUploadImages < ActiveRecord::Migration
  def change
    create_table :upload_images do |t|
      t.string :name
      t.integer :status
      t.integer :prototype_id
      t.timestamps null: false
    end
  end
end
