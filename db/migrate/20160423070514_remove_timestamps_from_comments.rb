class RemoveTimestampsFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :updated_at, :timestamps
  end
end
