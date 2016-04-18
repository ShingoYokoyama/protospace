class AddTimestampsToPrototypes < ActiveRecord::Migration
  def change
    add_timestamps(:prototypes)
  end
end
