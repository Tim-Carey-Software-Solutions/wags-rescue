class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.time :start, null: false
      t.time :end, null: false
      t.date :when, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
