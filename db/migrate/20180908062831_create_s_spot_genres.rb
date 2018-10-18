class CreateSSpotGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :s_spot_genres do |t|
      t.string   :name,            null: false
      t.integer  :l_spot_genre_id, null: false
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :s_spot_genres, :name
  end
end
