class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string  :name,              null: false
      t.integer :area_id,           null: false
      t.integer :s_spot_genre_id,   null: false
      t.text    :description,       null: false
      t.text    :short_description, null: false
      t.string  :period,            null: false
      t.string  :location,          null: false
      t.string  :path,              null: false
      t.float   :latitude
      t.float   :longitude

      t.timestamps
    end
    add_index :spots, :name
  end
end
