class RemoveDirectionsEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :directions
  end
end
