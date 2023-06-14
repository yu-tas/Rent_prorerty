class CreateNearestStations < ActiveRecord::Migration[6.0]
  def change
    create_table :nearest_stations do |t|
      t.text :route
      t.text :station
      t.string :minutes_walk
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
