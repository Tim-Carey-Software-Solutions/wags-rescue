class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.time :start
      t.time :end
      t.date :when
      t.string :directions
      t.string :address

      t.timestamps
    end
  end
end
