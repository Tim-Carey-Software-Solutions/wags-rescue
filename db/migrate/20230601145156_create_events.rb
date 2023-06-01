class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.date :when
      t.time :start
      t.time :end
      t.string :location
      t.string :address

      t.timestamps
    end
  end
end
