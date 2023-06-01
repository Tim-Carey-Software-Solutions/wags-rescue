class AddDirectionsToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :directions, :string
  end
end
